--bu aþamada artýk sorgu yapýlabilir bi veritabaný yazdým hatrý sayýlýr bi veri var içeride
--yapay zekadan aldýðým senaryolarý sorgu yaparak elde etmeye çalýþacaðým 

--1. Temizlenmesi gereken odalarý isteyen sorgu 

select RoomNumber AS OdaNO,
Status AS TemizlikDurumu 
from ROOMS Where Status='dirty'

--2. Aktif rezervasyonu olan misafirleri ve oda numaralarýný listeleyen sorgu
SELECT
G.FirstName AS AD,
G.LastName AS SOYAD,
RM.RoomNumber AS ODANO
FROM RESERVATIONS R
JOIN GUESTS G ON R.GUESTID=G.GUESTID
JOIN ROOMS RM ON R.RoomID=RM.RoomID

WHERE IsActive=1

--3. En çok harcama yapan ilk 5 misafiri listeleyen sorgu

SELECT
TOP 5 R.TotalAmount AS SATISMIKTAR,
G.FirstName AS AD,
G.LastName AS SOYAD

FROM GUESTS G
JOIN RESERVATIONS R ON G.GuestID =R.GuestID
ORDER BY R.TotalAmount DESC 

--4. Personel bazlý toplam satýþ tutarý ve rezervasyon sayýsý raporu
SELECT 
S.FirstName AS AD,
S.LastName AS SOYAD,
COUNT(*) AS RezervasyonSayýsý,
SUM (R.TotalAmount) AS TotalSatýsMiktarý
FROM STAFF S
JOIN RESERVATIONS R ON S.StaffID=r.CreatedByStaffID
GROUP BY S.FirstName,S.LastName

--5. Oda doluluk oranýný (%) hesaplayan sorgu

SELECT (SUM(CASE WHEN Status = 'Occupied' THEN 1 ELSE 0 END) * 100.0) / COUNT(*)
FROM ROOMS

--6. Misafir Hesap Özeti ve Kalan Borç Raporu
WITH ServiceTotals AS (
    SELECT ResID, SUM(Price) as TotalServicePrice 
    FROM SERVICES GROUP BY ResID
),
PaymentTotals AS (
    SELECT ResID, SUM(Amount) as TotalPaid 
    FROM PAYMENTS GROUP BY ResID
)
SELECT 
    G.FirstName + ' ' + G.LastName AS [Misafir],
    R.RoomID AS [Oda],
    R.TotalAmount AS [Konaklama Bedeli],
    ISNULL(ST.TotalServicePrice, 0) AS [Ekstra Hizmetler],
    (R.TotalAmount + ISNULL(ST.TotalServicePrice, 0)) AS [Genel Toplam],
    ISNULL(PT.TotalPaid, 0) AS [Yapýlan Ödeme],
    ((R.TotalAmount + ISNULL(ST.TotalServicePrice, 0)) - ISNULL(PT.TotalPaid, 0)) AS [Kalan Borç]
FROM RESERVATIONS R
JOIN GUESTS G ON R.GuestID = G.GuestID
LEFT JOIN ServiceTotals ST ON R.ResID = ST.ResID
LEFT JOIN PaymentTotals PT ON R.ResID = PT.ResID
WHERE R.IsActive = 1;