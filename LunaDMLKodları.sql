--Personel Veri Girişi
INSERT INTO STAFF (FirstName, LastName, Title, Phone, IsActive)
VALUES 
('Ünal', 'Özkol', 'Owner & CEO', '05058889900', 1),          
('Özgür', 'Özkol', 'Hotel Manager', '05551112233', 1),       
('Hüseyin', 'Özkol', 'Front Office Supervisor', '05554445566', 1), 
('Aydın', 'Özkol', 'Executive Chef', '05051112233', 1),      
('Emine', 'Özkol', 'Housekeeping Manager', '05054445566', 1), 
('Ahmet', 'Yılmaz', 'Receptionist', '05051234567', 1);       

--Oda Tipleri Veri Girişi 
INSERT INTO ROOMTYPES (TypeName, BasePrice, MaxCapacity)
VALUES 
('Standart', 4500.00, 2),    
('Deluxe', 8500.00, 3),      
('Luna Suite', 12000.00, 4);  

--Oda bilgileri Girişi 
-- Odaları fiziksel olarak oluşturup tiplerine bağlıyoruz
INSERT INTO ROOMS (RoomNumber, RoomTypeID, Status)
VALUES 
--Oteliöizin 3 katlı olduğunu hayal edelim kat sayısına göre de room type id sini eşleştiriyoruz
('101', 1, 'Available'), 
('102', 1, 'Dirty'),     
('103', 1, 'Available'), 
('104', 1, 'Available'), 
('105', 1, 'Available'), 
('106', 1, 'Available'), 


('201', 2, 'Available'), 
('202', 2, 'Occupied'),  
('203', 2, 'Maintenance'), 
('204', 2, 'Available'), 


('301', 3, 'Available'), 
('302', 3, 'Occupied');  

--Guests tablosu girişi tek tek isim bulmam zor olacağı için AI kullandım bu kısımda
INSERT INTO GUESTS (FirstName, LastName, IdentityNumber, Nationality, PhoneNumber, Email)
VALUES 
-- Yerli Misafirler (TR)
('Merve', 'Öztürk', '11223344556', 'TR', '05301112233', 'merve.ozturk@gmail.com'),
('Oğuz', 'Korkmaz', '22334455667', 'TR', '05312223344', 'oguz.korkmaz@yahoo.com'),
('Buse', 'Aydın', '33445566778', 'TR', '05323334455', 'buse.aydin@hotmail.com'),
('Hakan', 'Çelik', '44556677889', 'TR', '05334445566', 'hakan.celik@gmail.com'),
('Deniz', 'Arslan', '55667788990', 'TR', '05345556677', 'deniz.arslan@outlook.com'),
('Zeynep', 'Yıldız', '66778899001', 'TR', '05356667788', 'zeynep.yildiz@gmail.com'),
('Emre', 'Güneş', '77889900112', 'TR', '05367778899', 'emre.gunes@yandex.com'),
('Burak', 'Şahin', '88990011223', 'TR', '05378889900', 'burak.sahin@gmail.com'),
('Ece', 'Bulut', '99001122334', 'TR', '05389990011', 'ece.bulut@gmail.com'),
('Kaan', 'Demir', '10112233445', 'TR', '05391112233', 'kaan.demir@hotmail.com'),

-- Rusya ve BDT Misafirleri (RU, UA, KZ)
('Ivan', 'Ivanov', 'RU102030', 'RU', '+79012345678', 'ivan.ivanov@mail.ru'),
('Natalia', 'Sokolova', 'RU405060', 'RU', '+79023456789', 'n.sokolova@yandex.ru'),
('Alexei', 'Petrov', 'RU708090', 'RU', '+79034567890', 'a.petrov@list.ru'),
('Yulia', 'Smirnova', 'RU112233', 'RU', '+79045678901', 'y.smirnova@mail.ru'),
('Artem', 'Kuznetsov', 'RU445566', 'RU', '+79056789012', 'artem.k@inbox.ru'),
('Olga', 'Popova', 'RU778899', 'RU', '+79067890123', 'olga.popova@bk.ru'),
('Dimitri', 'Morozov', 'RU990011', 'RU', '+79078901234', 'd.morozov@mail.ru'),
('Elena', 'Volkova', 'RU223344', 'RU', '+79089012345', 'e.volkova@yandex.ru'),
('Sergei', 'Pavlov', 'RU556677', 'RU', '+79090123456', 's.pavlov@mail.ru'),
('Tatiana', 'Kozlova', 'RU889900', 'RU', '+79101234567', 't.kozlova@list.ru'),

-- Avrupa Misafirleri (DE, GB, FR, NL)
('Klaus', 'Schmidt', 'D10203040', 'DE', '+491512345678', 'klaus.s@web.de'),
('Helga', 'Weber', 'D50607080', 'DE', '+491523456789', 'h.weber@t-online.de'),
('Thomas', 'Wagner', 'D90101112', 'DE', '+491534567890', 't.wagner@gmx.de'),
('James', 'Smith', 'UK5544332', 'GB', '+447401234567', 'j.smith@icloud.com'),
('Emma', 'Wilson', 'UK9988776', 'GB', '+447402345678', 'e.wilson@outlook.com'),
('Oliver', 'Brown', 'UK1122334', 'GB', '+447403456789', 'o.brown@gmail.com'),
('Jean', 'Dupont', 'FR4433221', 'FR', '+33612345678', 'j.dupont@orange.fr'),
('Marie', 'Leroy', 'FR8877665', 'FR', '+33623456789', 'm.leroy@sfr.fr'),
('Piet', 'De Jong', 'NL1122334', 'NL', '+31612345678', 'p.dejong@ziggo.nl'),
('Anke', 'Visser', 'NL5566778', 'NL', '+31623456789', 'a.visser@kpn.nl'),

-- Diğer Ülkeler ve Ekstra Karakterler
('John', 'Doe', 'US99887766', 'US', '+12025550101', 'john.doe@gmail.com'),
('Jane', 'Doe', 'US55443322', 'US', '+12025550102', 'jane.doe@gmail.com'),
('Ahmed', 'Mansour', 'AE1122334', 'AE', '+971501234567', 'a.mansour@etisalat.ae'),
('Fatima', 'Said', 'AE5566778', 'AE', '+971507654321', 'f.said@du.ae'),
('Hiroshi', 'Tanaka', 'JP9988776', 'JP', '+819012345678', 'h.tanaka@docomo.ne.jp'),
('Yuki', 'Sato', 'JP1122334', 'JP', '+819087654321', 'yuki.sato@softbank.jp'),
('Luca', 'Rossi', 'IT4455667', 'IT', '+393331234567', 'l.rossi@libero.it'),
('Giulia', 'Bianchi', 'IT8899001', 'IT', '+393339876543', 'g.bianchi@alice.it'),
('Carlos', 'Garcia', 'ES1122334', 'ES', '+34612345678', 'c.garcia@movistar.es'),
('Maria', 'Rodriguez', 'ES5566778', 'ES', '+346987654321', 'm.rodriguez@orange.es'),

-- Ekstra Karakterler (Sistemi Zorlamak İçin)
('Ali', 'Kuşçu', '12121212121', 'TR', '05411212121', 'ali.kuscu@edu.tr'),
('Mimar', 'Sinan', '34343434343', 'TR', '05423434343', 'm.sinan@vakif.org'),
('Isabella', 'Swan', 'US10101010', 'US', '+12025550199', 'i.swan@forks.com'),
('Edward', 'Cullen', 'US20202020', 'US', '+12025550188', 'e.cullen@vampire.com'),
('Harry', 'Potter', 'UK0000001', 'GB', '+447400000001', 'h.potter@hogwarts.ac.uk'),
('Hermione', 'Granger', 'UK0000002', 'GB', '+447400000002', 'h.granger@hogwarts.ac.uk'),
('Ragnar', 'Lothbrok', 'NO9999999', 'NO', '+47900112233', 'ragnar@valhalla.no'),
('Lagertha', 'Shield', 'NO8888888', 'NO', '+47900332211', 'lagertha@shield.no'),
('Bjorn', 'Ironside', 'NO7777777', 'NO', '+47900554433', 'bjorn@ironside.no'),
('Ivar', 'Boneless', 'NO6666666', 'NO', '+47900776655', 'ivar@boneless.no');

--sayıyı kontrol ediyorum 
SELECT COUNT(*) AS Sayı FROM GUESTS;

--aynı şekilde AI yardımı ile reservations tablosunu dolduruyorum 
INSERT INTO RESERVATIONS (GuestID, RoomID, CreatedByStaffID, CheckInDate, CheckOutDate, TotalAmount, IsActive)
VALUES 
(6, 1, 3, '2026-03-10', '2026-03-15', 12500.00, 1),
(7, 2, 6, '2026-03-01', '2026-03-05', 10000.00, 1),
(8, 3, 2, '2026-02-15', '2026-02-20', 12500.00, 1),
(9, 4, 3, '2026-03-20', '2026-03-25', 12500.00, 1),
(10, 5, 6, '2026-04-05', '2026-04-12', 17500.00, 1),
(13, 6, 2, '2026-05-01', '2026-05-05', 10000.00, 1),
(23, 7, 3, '2026-03-05', '2026-03-10', 22500.00, 1),
(24, 8, 6, '2026-04-15', '2026-04-20', 22500.00, 1),
(25, 9, 2, '2026-02-10', '2026-02-15', 22500.00, 1),
(26, 10, 3, '2026-03-25', '2026-03-30', 22500.00, 1),
(14, 1, 6, '2026-04-10', '2026-04-15', 12500.00, 1),
(15, 2, 2, '2026-05-20', '2026-05-25', 12500.00, 1),
(46, 11, 3, '2026-06-01', '2026-06-10', 76500.00, 1),
(47, 12, 6, '2026-03-10', '2026-03-15', 42500.00, 1),
(48, 11, 2, '2026-07-01', '2026-07-05', 34000.00, 1),
(49, 12, 3, '2026-08-15', '2026-08-20', 42500.00, 1),
(50, 4, 6, '2026-09-01', '2026-09-05', 10000.00, 1),
(16, 5, 3, '2026-06-10', '2026-06-15', 12500.00, 1),
(17, 6, 6, '2026-07-10', '2026-07-15', 12500.00, 1),
(18, 1, 2, '2026-10-01', '2026-10-05', 10000.00, 1),
(27, 8, 3, '2026-05-01', '2026-05-05', 18000.00, 1),
(28, 9, 6, '2026-06-15', '2026-06-20', 22500.00, 1),
(29, 10, 2, '2026-07-20', '2026-07-25', 22500.00, 1),
(30, 7, 3, '2026-08-01', '2026-08-10', 40500.00, 1);

--Ödemeler Payments tablosunu dolduruyorum 
INSERT INTO PAYMENTS (ResID, PaymentDate, Amount, PaymentMethod)
VALUES 

(1, '2026-02-20', 68000.00, 'Bank Transfer'),
(2, '2026-02-26', 13500.00, 'Credit Card'),
(3, '2026-03-10', 12500.00, 'Cash'),
(4, '2026-03-01', 10000.00, 'Credit Card'),
(5, '2026-02-15', 12500.00, 'Bank Transfer'),
(6, '2026-03-20', 12500.00, 'Credit Card'),
(7, '2026-04-05', 17500.00, 'Cash'),
(8, '2026-05-01', 10000.00, 'Bank Transfer'),
(9, '2026-03-05', 22500.00, 'Credit Card'),
(10, '2026-04-05', 22500.00, 'Cash'), 
(11, '2026-04-10', 12500.00, 'Credit Card'),
(12, '2026-05-20', 12500.00, 'Bank Transfer'),
(13, '2026-06-01', 76500.00, 'Credit Card'),
(14, '2026-03-10', 42500.00, 'Bank Transfer'),
(15, '2026-05-20', 34000.00, 'Credit Card'),
(16, '2026-06-10', 42500.00, 'Cash'),
(17, '2026-09-01', 10000.00, 'Credit Card'),
(18, '2026-10-01', 12500.00, 'Bank Transfer'),
(19, '2026-11-15', 12500.00, 'Credit Card'),
(20, '2026-12-01', 10000.00, 'Cash'),
(21, '2026-05-01', 18000.00, 'Credit Card'),
(22, '2026-06-15', 22500.00, 'Cash'),
(23, '2026-07-20', 22500.00, 'Bank Transfer'),
(24, '2026-08-01', 40500.00, 'Credit Card');

--Servisler tanlosunu dolduruyorum 
INSERT INTO SERVICES (ResID, ServiceName, Price)
VALUES 
(1, 'Spa & Massage', 2500.00),
(2, 'Mini Bar - Snacks', 450.00),
(3, 'Laundry Service', 600.00),
(4, 'Room Service - Dinner', 1200.00),
(5, 'Airport Transfer', 1500.00),
(6, 'Extra Breakfast', 500.00),
(7, 'Spa & Massage', 2000.00),
(8, 'Mini Bar - Beverage', 350.00),
(9, 'Room Service - Lunch', 950.00),
(10, 'Laundry Service', 450.00),
(11, 'Airport Transfer', 1800.00),
(12, 'Spa Ritual', 3000.00),
(13, 'VIP Airport Transfer', 2200.00),
(14, 'Mini Bar - Premium', 750.00),
(15, 'Laundry Service', 700.00),
(16, 'Extra Bed Charge', 1000.00),
(17, 'Airport Transfer', 1500.00),
(18, 'Spa & Massage', 2500.00),
(19, 'Mini Bar', 350.00),
(20, 'Room Service', 1300.00),
(21, 'Laundry', 500.00),
(22, 'Spa Therapy', 2000.00),
(23, 'Airport Transfer', 1600.00),
(24, 'Mini Bar Refresh', 450.00);

--artık sorgu yapabilecek kadar belirli bi veri var elimizde çoğunluğun manuel giriş olmasını istediğim için
--bir yerden sonra fazla veri girişi yapamadım çünkü genel olarak insert into mantığı aynı 


