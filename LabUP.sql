CREATE TABLE Lab 
(
    labID INTEGER NOT NULL UNIQUE,
    Name TEXT NOT NULL,
    Availability TEXT,
    Comments TEXT,
    PRIMARY KEY (labID,Name)
);

INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (252, 'معمل احياءدقيقة', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (253, 'معمل الكيمياء الحيوية', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (254, 'معمل زراعة الانسجة', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (255, 'معمل الكيمياء الحيوية', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (256, 'معمل فيزياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (257, 'معمل مركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (201, 'معمل مركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (210, 'معمل احياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (208, 'معمل احياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (205, 'معمل الكيمياء الحيوية', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (203, 'معمل الكيمياء', 'Availabil', null);

INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (200, 'معامل البنك الحيوي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (202, 'معمل الاحياء الدقيقه المركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (204, ' معمل الكيمياءالحيوي المركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
VALUES (220, 'معمل حاسب', 'Availabil', null);



CREATE TABLE UserReservtion(
    PhoneNumber INTEGER PRIMARY KEY,
    Email TEXT NOT NULL,
    UserName TEXT NOT NULL,
    Department TEXT NOT NULL
);
-- check ****************************************************
CREATE TABLE Reservation(
    DurationOfUse INTEGER NOT NULL,
    ReservationID INTEGER PRIMARY KEY,
    TotalPrice REAL NOT NULL,
    Payment TEXT NOT NULL,
    DateOfReservation TEXT NOT NULL,
    TimeOfReservation TEXT NOT NULL,
    Comments TEXT,
    labID INTEGER UNIQUE,
    PhoneNumber INTEGER UNIQUE,
    FOREIGN KEY (labID, ReservationID) REFERENCES Lab ( labID, ReservationID) ,
    FOREIGN KEY (PhoneNumber) REFERENCES UserReservtion (PhoneNumber)
);

CREATE TABLE Devices
(
    DeviceName TEXT,
    SerialNumber TEXT ,
    BaptismalNumber TEXT,
    DateOfBaptism DATE,
    CustodyOfTheStudent TEXT,
    DeviceFunction TEXT,
    PricePerHr REAL,
    PricePerDay REAL,
    PricePerWeek REAL,
    Comments TEXT,
    Maintenance TEXT,
    Name TEXT,
    labID INTEGER,
    ReservationID INTEGER,
    PRIMARY KEY (DeviceName,SerialNumber),
    FOREIGN KEY (labID, ReservationID) REFERENCES Lab ( labID, ReservationID) ,
    FOREIGN KEY (ReservationID) REFERENCES Devices (ReservationID)

);

CREATE TABLE bill
(
    PhoneNumber INTEGER UNIQUE ,
    ReservationID INTEGER UNIQUE,
    FOREIGN KEY (PhoneNumber) REFERENCES UserReservtion (PhoneNumber),
    FOREIGN KEY (ReservationID) REFERENCES Devices (ReservationID)

);


--Lab 252 -------------------------------------------
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('جهاز قياس الطيف المرئي', 'Se. 9423 UVG 1702E - UVG112602 - Typ. Helios Gamma - Thermo', null, null, 'ماجدة أبو راس', 'قياس درجة امتصاص اللون',  null, null, null, 'الزهراوي - أنظمة النيزك', null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('قرص صلب', 'LG', null, null, 'ماجدة أبو راس', 'حفظ وتخزين البيانات', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('شاشة كمبيوتر', '999181412 - Mod.V773 - BenQ', null, null, 'ماجدة أبو راس', 'عرض البيانات', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('لوحة مفاتيح وفأرة', 'Se.04673443 - Mod.KB-1925', null, null, 'ماجدة أبو راس', 'ادخال البيانات', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('مجهر', '3A14126 - OLYMPUS', null, null, 'ماجدة أبو راس', 'فحص العينات', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('كاميرا', '3020379C5 - Mod.DP12-2 - OLYMPUS', null, null, 'ماجدة أبو راس', 'التصوير', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('شاشة تابعة للكاميرا', '3020379B3 - Mod.DP12-2 - OLYMPUS', null, null, 'ماجدة أبو راس', 'العرض', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('طابعة', 'HU31N1Q1F1 - hp deskjet 3325 -HP', null, null, 'ماجدة أبو راس', 'الطباعة', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('خلاط للمحاليل', 'Mod.TTS2 - Yellow line', null, null, 'هدى الكريثي', 'المزج والخلط', null, null, null, null,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('سخان مع مقلب', '004n1370 - fisher scientific', null, null, 'زين الشريف', 'التسخين', null, null, null, null,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('فريزر - 20 (ثلاجة)', 'COO68IFM1109 - FRIMED', null, null, 'هدى الكريثي', 'التجميد', null, null, null, null, null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('مطحنة', 'Mod.SM300 - RETSCH', 1362, '1436-10-13', 'آمال عاشور', 'الطحن',null, null, null, 'شركة كوثر إبراهيم',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

VALUES ('جهاز تقطير الماء', 'CluvFL273363 - Mod.Classic UVF MK2 - ELGA', null, null, 'مجهول', 'تقطير الماء',null, null, null, null,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('ميزان خاص بوزن الفئران', 'Typ.Olympia Plus - SOEHNLE', NULL, NULL, 'أسماء الحربي', 'الوزن',null, null, null, 'لا يوجد تعميد',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('حضان مع هزاز', '127944 - MOD.4334 THERMO SCINTIFIC', 308, '1434-3-21', 'جيهان رحيمي', 'حفظ العينات',null, null, null, 'شركة الجيل الطبية',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('طحانة تحليلية صغيرة', 'mod.A10BS000 - IKA', 1323, '1436-10-10', 'آمال عاشور', 'الطحن', null, null, null,'مؤسسة نسيم الصفصاف',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('جهاز تعقيم المواد مع التجفيف', '22017 - Mod. GLS - Castle', NULL, NULL, 'مجهول', 'التعقيم',null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('فرن', 'Se. 9509-303 - Preaision', NULL, NULL, 'مجهول', 'التسخين',null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('جهاز طرد مركزي', 'Se.799090722 - mod. ALC PK 121R', NULL, NULL, 'مجهول', 'فصل المواد',null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('ثلاجة', 'SAMSAUING', NULL, NULL, 'مجهول', 'التبريد',null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('جهاز كمبيوتر', NULL, NULL, NULL, 'الإشراف المشترك', NULL, null, null, null,'تم أخذه من الإدارة',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('قرص صلب', 'Se.CZC1412LPX - HP', NULL, NULL, 'الإشراف المشترك', NULL, null, null, null,'تم أخذه من الإدارة',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('شاشة', 'Se. 3CQ131B3YW - HP', NULL, NULL, 'الإشراف المشترك', NULL,null, null, null, 'تم أخذه من الإدارة',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('لوحة مفاتيح وفأرة', 'Mod. KU - 0316 - HP', NULL, NULL, 'الإشراف المشترك', NULL,null, null, null, 'تم أخذه من الإدارة',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

VALUES ('ميزان', NULL, NULL, NULL, NULL, NULL,null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);


--Lab 255 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID]) 

VALUES ('حمام مائي', '9410-134 - mod.183 - PRECISION',null, null, 'فوزية النويصر', 'التسخين', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

VALUES ('مازج أنابيب', 'mod. KS501 - IKA', null, null, 'مجهول', 'الخلط', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

VALUES ('ميكروسكوب تشريحي', '148028 -Typ. 020-507.010 - LEICA', null, null, 'بلقيس المعينة', 'فحص العينات', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

VALUES ('ثلاجة', 'SR-57NXA - SAMSAUING', null, null, null, 'التبريد', null, null, null, null, null, 'معمل كيمياء حيويه',255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

VALUES ('جهاز التحليل المناعي مع ملحقاته', 'Mod. MAGPIX - Se.MAGPX14211701-Luminex', 666, '20-6-1436', 'جنى باشراحيل', 'تحليل المكونات الحيوية', null, null, null, null,null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

VALUES ('شاشة', 'Dell- Se.CN-GC97H-72872-460-A6LL', 666, '20-6-1436', 'جنى باشراحيل', 'العرض', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

VALUES ('قرص صلب', 'Dell- OPTIPLX 7010', 666, '20-6-1436', 'جنى باشراحيل', 'حفظ البيانات', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

VALUES ('لوحة مفاتيح', 'Se.CN-0DJ454-71581-45N-079V-A01', 666, '20-6-1436', 'جنى باشراحيل', 'ادخال البيانات', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID]) 

VALUES ('ماسح معلومات', 'Datalogic-Typ.GD4330-WH- Se.G14D68067-CRYPHON', 666, '20-6-1436', 'جنى باشراحيل', 'المسح', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID]) 

VALUES ('جهاز هزاز مداري السرعه', 'Mod. 4625-1CEM - Thermo Scientific - Se.C1882131264780', 666, null, 'جنى باشراحيل', 'المزج والخلط', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

VALUES ('هزاز للأنابيب دوراني', 'Typ. VM3 - MARIENFELD', null, null, 'لبنى نوار', 'المزج والخلط', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

VALUES ('كابينة اشعة فوق بنفسجية', '2097 - mod.mini2  ', null, null, 'مجهول', 'توفير بيئة مناسبة', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);


--Lab 256 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('حضان ثاني اكسيد الكربون', '1311N203XL104 - MOD.NB-203XL', 1629, '1434-11-12', 'رانيا مقادمي', 'حفظ العينات',null, null, null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('اسطوانةغاز ثاني اكسيد الكربون', null, null, null, 'أسماء الحربي', null,null, null, null, 'مؤسسة العصر القادم', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مجهر تشريح استيريو', '350255(SZ674S) - OPTIKA', 1629,'1434-11-12', 'رانيا مقادمي', 'فحص الشرائح', null, null,null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('حمام مائي مع هزاز', 'Se.1145110k - Mod. 1083 - GFL', null, null, 'جيهان خان', 'التسخين',null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ملحق', 'TM-30A', null, null, 'جيهان خان', null,null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مازج أنابيب', '006N0332 - MOD.231 - FISHER SCIENTIFIC', null, null, 'مجهول', 'المزج والخلط',null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مجهر ضوئي ', '9901917 - OPTIC IVYMEN SYSTEM', null, null, null, 'فحص الشرائح', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ثلاجة معملية', '398F0010 - Sanyo Medicool MPR-211F', null, null, 'أسماء الحربي', 'التبريد',null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('spin coater', '37116 - Mod. KWUA', null, null, null, null,null, null, null, 'في منزل الطالبة', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ميزان حساس بحواجز (تحليلي رقمي)', '4600904 - Precisa', 924,'1432-7-9', 'أسماء الحربي', 'الوزن',null, null, null, 'شركة كوثر إبراهيم (في منزل الطالبة)', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مسخن مع محرك مغناطيسي', 'Mod. 1000 - JENWAY', null, null, null, 'التسخين وخلط العينات', null, null, null, 'في منزل الطالبة', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ميزان رقمي', 'SF-400 - Digital Balance', null, null, 'مجهول', 'الوزن', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مجهر ضوئي مع كاميرا', 'Se.13644 - Prior', null, null, 'لبنى نوار', 'فحص الشرائح',null, null, null,null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ملقط جراحة (4)', null, 1665, '1434-1-3', 'أسماء المحمدي', null, null, null, null, 'مؤسسة العصر القادم', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مقص جراحة عدد (4)', null, 1665, '1434-1-3', 'أسماء المحمدي', null, null, null, null, 'مؤسسة العصر القادم', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ماصة الكترونية عدد (3)', 'Se. 23041464 - AG8171 - SOCOREX', null, null, 'رانيا مقادمي', null, null, null, null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ماصة الكترونية', 'Se. 23041465 - AG8161 - SOCOREX', null, null, 'رانيا مقادمي', null, null, null, null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ماصة الكترونية', 'Se.22011158', null, null, null, null, null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('شاشة كمبيوتر', 'Se.CN904P5F5 - HP1710', null, null, null, 'عرض البيانات', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('لوحة مفاتيح', 'CT. BDMHEOCOKZX30H -HP', null, null, null, 'ادخال البيانات', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('قرص صلب', 'Se.TRF5020VOW', null, null, null, 'تخزين البيانات', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('سخان مع مقلب', 'Se.03200904-Mod.HS10-2- Torrey pines scientific', null, null, 'مجهول', 'التسخين والمزج',null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ميزان حساس  ', 'Se.1113431099 - Mod.B303 - College', null, null, 'زين الشريف', null,null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('جهاز التدوير بغطاء له رف واحد', null, 526,'1438-11-18', null, null, null, null, null, 'مؤسسة سهام باغفار التجارية (في منزل الطالبة)', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ملحق مضخة للتفريغ', null, 526,'1438-11-18', null, null, null, null, null, 'مؤسسة سهام باغفار التجارية (في منزل الطالبة)', null, 'معمل فيزياء', 256, null);


--lab 257 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('معقم للانابيب(بالالترا سونيك)', 'Se.8891E-MTH - COLE PARMER', null, null, 'مجهول', 'التعقيم',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('دولاب غازات', 'HAMILTON', null, null, 'مجهول', 'التخلص من الغازات السامة',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ثلاجة', 'WHIRLPOOL', null, null, 'مجهول', 'حفظ العينات',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('صانعة ثلج', 'Se.1L4164 - ILSHIN', null, null, 'مجهول', 'صانعة ثلج',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('فرن', 'Se.9508-205 - PRECISION', null, null, 'مجهول', 'التسخين', null, null,null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('جهاز هزاز (shaker)', 'Se.090913229 - titramax', null, null, 'مجهول', 'تحريك العينات',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('سخان', 'Se.1755070902595 -Mod.HP130910-33 - BARNSTEAD INTER.',null, null, 'أسماء الحربي', 'التسخين',null, null, null, 'نتأكد من التعميد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES (null, null, null, null, null, 'مضاعفة ال دي إن أي',null, null, null, null, null, 'معمل مركزي',257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('دوار (محرك دوران) أزرق', 'Se.04005 - Schutt petriturn-c', null,null, 'مجهول', 'تحريك العينات',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('جهاز تجفيف عينات', '5305ZQ410254 - Vacufuge Plus', 930,'1432-7-9', 'أسماء الحربي', 'تجفيف العينات',null, null, null, 'مؤسسة أنظمة النيزك', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('قارئ لاطباق 96 فتحة', 'Se.1102006873 - PR3100TSC(Bio-rad)', null, null, 'أسماء الحربي', 'تحليل المكونات الحيوية',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('طابعة', 'CNBW82W5HM - HP LASer jet (2015)', null, null, 'أسماء الحربي', 'الطباعة',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('غاسل عينات أطباق 96 فتحة', 'Se.EC12D414309 - PW 40 Microplate Washer (Bio-rad)', 928,'1438-7-9', 'أسماء الحربي', 'غاسل أطباق 96 فتحة',null, null, null, 'شركة الجيل الطبية', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('جهاز تحليل مثيلية الدي إن أي ', '53015 - Qigen', null,'1435-7-26', 'هديل السفياني', 'تحليل مثيلية الأحماض النووية',null, null, null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('كمبيوتر محمول', 'hp لا يوجد رقم ', null,'1436-26', 'هديل السفياني', 'معالجة وعرض البيانات',null, null, null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مضخة', 'Se.05266557- Typ.N816.1.2KN.18 - KIF LAB', null,'137-7-26', 'هديل السفياني', 'الضخ',null, null, null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ملحق WORK statin', '000003-12C - PyromarkQ96', null,'1438-7-26', 'هديل السفياني', null,null, null, null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('جهاز تجفيف عينات', 'Se.DNA110-5H320725-1G - Mod.DNA110 - Savant', null, null, 'مجهول', 'تجفيف العينات', null, null,null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('جهاز طرد مركزي', 'Se.100386 - SIGMA - Typ.3-16K', null, null, 'خديجة بالعمش', 'فصل العينات',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('فرن', 'LEEC mod.SSS - Se.9307', null, null, null, null,null, null, null, null, null, 'معمل مركزي',257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('جهاز ماك كو-كوبا كلنيكل قياس كثافة العظم ', 'Se.0105A0298 ', null, null, 'سوسن خوجة', null,null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('كمبيوتر محمول', 'Se.X4067050H - TOSHIBA', null, null, null, null, null,null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ملقب مغناطيسي ', '30361202 - SCHUTT PETRITUM', null, null, null , 'المزج',null, null, null,  'أزرق ', null, 'معمل مركزي', 257, null);

--lab 210 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مجهر', '9911036 - optic ivymen', null, null, null, 'فحص الشرائح',null, null, null, null, null, 'معمل احياء', 210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مولد طاقة', 'Auto stac - TMR-5082364 - Mod.ST1500W', null, null, 'نورة الأحمدي', 'توليد الطاقة',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('مولد طاقة', 'auto stac- Mod.ST1000W', null, null, 'نورة الأحمدي', 'توليد الطاقة', null, null,null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('شاشة كمبيوتر', 'Se.SN00F9HKAG100410W-Samsung', null, null, null, 'عرض البيانات',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('قرص صلب', 'LG IEEE488.2', null, null, null, 'حفظ البيانات', null, null,null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('طابعة', 'Se.CN-680D808W - HP', null, null, null, 'الطباعة', null, null,null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('لوحة مفاتيح', 'XP1471156329 - Genius', null, null, null, 'ادخال البيانات',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('سخان', 'Mod.4659-00 - Cole-Parmer Instrument Company', null, null, null, 'التسخين',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('سخان', 'Se.8593 - Nickel Electro LTD', null, null, null, 'التسخين',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('اسطوانة غاز هيليوم', null, null, null, null, null, null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('ثلاجة صغيرة', '8102-202-454 - SAMSAUING', null, null, 'مجهول', null,null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('حمام مائي', '4081401 - LSB-045S', null, null, 'مجهول', null, null, null,null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('نظام تعداء-جهاز تثقيب كهربائي ذو خاصية شعرية', 'Se.MP924901 - Mod.MPK5000 - invitrogen', 427,'1439-8-10', 'روابي زاهد', null,null, null, null, 'توريدات الخليج', null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('جهاز تعقيم تابع لجهاز تجفيف بالتبريد ', 'Se.SP20765 - Mod.ASB230 - Astell', null, null,null, null, null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('جهاز تحليل كهربائي', '3040 - V20-SET SCIE-PLAS', null, null, null,null, null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('اضاءة ال سي دي للميكروسكوب', 'Se. 350365 - OPTIKA Mod. CL-01', 1674,'1434-1-4', 'أسماء المحمدي', null, null, null, null, 'شركة نجم الجزيرة', null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('حامل مع ذراع اصطناعية للميكروسكوب', 'Se. 347813 - OPTIKA Mod. SZ-STL3', 1674,'1434-1-4', 'أسماء المحمدي', null,null, null, null, 'شركة نجم الجزيرة', null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('فرن ', 'Se.5094-09-415 - GALLE NKAMP', null, null, 'دينا باخطمه', null, null,null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
VALUES ('وحدة رحلان كهربائي أفقي- صغير', 'Se. 2314 - Mod. HU13', null, null, null, null,null, null, null, null, null, 'معمل احياء',210, null);


--lab 201 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ميكروسكوب تشريحي  مع كاميرا', 'WZ25IC280 - 020-435.037 LEICA', null, null, 'لبنى نوار', null, null, null,  null, null, null, 'معمل مركزي عام', 201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز فصل البروتينات أحادي البعد', 'Se.1530092 - Ettan IPG phor3 (GE healthcare)', null, null, 'أسماء الحربي', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز فصل البروتينات أحادي البعد', 'Se.526BR08613 - Protean IEFCell (Bio-rad)', null, null, 'أسماء الحربي', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز فصل البروتينات (الهجرة الكهربائي)عمودي', 'Protean II xi cell(Bio-rad)', null, null, 'أسماء الحربي', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مولد هجرة كهربائي عمودي', 'Se.044BR4942', null, null, 'أسماء الحربي', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مفتت خلايا بالموجات الفوق صوتية', 'Se.230-2000 - Mod.150 V/T - Biologics', null, null, 'أسماء الحربي', 'التفتيت', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مبرد جلات مائي', '10175439 - mod.F12 - Julabo', null, null, 'أسماء الحربي', 'التبريد', null, null, null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز قراءة الطيف المرئي خاص بالبروتينات والاحماض النوويةUV', 'Se.273BR05980 -BioRad', 928, '1432-7-9', 'أسماء الحربي', null, 'شركة الجيل الطبية', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('حمام مائي هزاز', 'Se.10011402 - JSSB-30T - JSR', null, null, null, 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ماسح ضوئي للجلات المصبوغة بصبغات مرئية', 'Se.F10020058 Mod. powerLook2100XL-USB', null, null, 'أسماء الحربي', 'المسح', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز تصوير الهلام (جهاز المسح الضوئي الخاص بالهلام)', 'Se.721BR02795 - Bio-rad UV catalog no.1708181', null, null, 'أسماء الحربي', 'التصوير', 'شركة الجيل', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز القياس بالأشعة فوق بنفسجية(Spectrophotometer)', 'Se.137123 - Aqurius', null, null, 'زين الشريف', 'القياس', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز طرد مركزي', 'Se.58100047 - Hermle', null, null, 'الاشراف المشترك', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز هزاز', 'Se.10890187 - Lab-line', null, null, 'الاشراف المشترك', 'المزج', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('فريزر -80 ', 'Se.1110265 - Mod.MDF-U54V - sanyo', 105, '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مولد طاقة Power Supply', '56952 - Consort', null, null, null, 'توليد الطاقة', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('فرن', '2010072001 - LabTech', null, null, null, 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز تقطير المياه (معالجة المياه)', 'F5NN03703K - Milli-Q plus', null, null, 'زين الشريف', 'تقطير الماء', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ملحق', 'Se.F5MN88345D', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('خزان ', null, null, null, null, 'الحفظ', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('حمام مائي Water Bath', 'ecoline RE120 - B19015 - LAUDA brinkmann ', null, null, 'فوزية النويصر', 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز تعقيم', 'Se.CL50353 - Astell Scientific', null, null, null, 'التعقيم', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('منظف بالموجات فوق الصوتية (معقم أنابيب)', 'Se.RLC9606047C - Mod. 2210E-MTH - BRANSONIC', null, null, 'خديجة بالعمش', 'التنظيف', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('سطح ساخن صغير', 'Se.01292 - Scientific Products', null, null, null, 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز فصل المكونات Microfuge', 'Se.M1Z93G10 - Cat.342350 - Backman', null, null, null, 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مولد طاقة ', '151007 - Fisher Scientific', null, null, null, 'توليد الطاقة', 'غير موجود في المعمل', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مجهر تشريحي', 'Se.13643 - Mod.Zoom master - Prior', null, null, 'لبنى نوار', 'فحص العينات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مجهر', 'Typ.020-435036 - Leitz', null, null, null, 'فحص العينات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('سخان أزرق كبير', 'Se.105178818 - elctrothermal', null, null, null, 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ميزان', 'Se.35800047- AE163 - Metter', null, null, 'دينا باخطمة', 'الوزن', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ميزان فئران', 'Typ.Olympia Plus - Soehnle', null, null, 'أسماء الحربي', 'الوزن', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('حمام مائي', 'Se.9512-302 - Mod.183 - Precision', null, null, 'فوزية النويصر', 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مضخة شفط الهواء ', 'Se.TFTF091 - Today’s', null, null, 'أسماء الحربي', 'شفط الهواء', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز قياس الرطوبة ودرجة الحرارة', 'Cole-Parmer - Ja5006393', null, null, 'ماجدة', 'القياس', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('قرص صلب', 'Se.Du1165#ABV', null, null, null, 'تخزين البيانات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('شاشة', 'Se.CNC729NSW4 - HP L1706', null, null, null, 'العرض', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('لوحة مفاتيح ', 'Se.BC3380BQRUUX1U - HP', null, null, null, 'ادخال البيانات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('كمبيوتر محمول', 'Se.ZR6G93AZ400446L - Samsung', null, null, null, 'حفظ وعرض البيانات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز طرد مركزي  ', 'Se.100386 - sigma-16K', null, null, 'خديجة بالعمش', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('روتر خاص بأطباق 96', 'sigma', null, null, 'هدى الشيبي', null, 'مؤسسة نسيم الصفصاف', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مولد طاقة', 'Mod.ST500W4 - AUTO STAC', null, null, 'هدى الكريثي', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز تعقيم الأبر', 'Se. 08050085-3', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مجفف جلات', 'Se.271BR04665 - Mod.GelAir Dryer', 928, '1432-7-9', 'أسماءالحربي', null, 'شركة الجيل الطبية', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('أسطوانة حفظ النيتروجين السائل عدد(1)', 'Se.511656293 - Mod 8127', 928, '1432-7-9', 'أسماءالحربي', null, 'شركة الجيل الطبية', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز لهز أطباق تفاعل البلمرة', 'Se.Z3091364 - labnet', 1412, '1434-10-8', 'هديل السفياني', 'المزج', 'مؤسسة الشبكة للأجهزة المخبرية', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('هوائي محطه', 'Se.AV103 - mod.A2VB - BASS AIRE', null, null, 'بلقيس المعينة', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز تحليل كهربائي', '2105 - HU-20', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('صندوق ضوئي للشرائح', '290 - WATFORD', null, null, 'مجهول', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مجفف انابيب', 'Se. ND101002 - Mod. DCU012', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مجفف شرائح زجاجية', '10021816 - Electrothermal', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('حضان', 'Se.201052 - Mod.1LD-110HM ALP', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مجهر ضوئي', 'WZ25IC280 - LEITZ', null, null, 'بلقيس المعينة', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('حضان', 'Se.L6600/3 - Mod.IP100-u', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مجهر مع كاميرا', 'Typ.090135.002 - LEICA', null, null, 'حنان قاضي', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ملحق', 'Typ.3D1-185104-000', null, null, 'حنان قاضي', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ميكروسكوب تشريحي', '13643 - Prior  Zoom master', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مولد طاقة', 'ST500w4 - Auto stac', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز طرد مركزي', 'Mod.D7200TUTTLINGEN - HETTICH', null, null, null, 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);


--lab 203 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('سخان مع مقلب مغناطيسي', 'Se.1069990552370 -Mod. SP46920 - Thermolyne', null, null, 'لبنى نوار', 'تسخين ومزج العينات', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز مسخن رقمي', 'Se.781449001 - GRANT', '1899', '1436/1/5', 'آمال عاشور', 'التسخين', 'مؤسسة عبدالله محمد الصانع', null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ميزان حساس', 'Se.1114501467 - Mod. B303 - College', null, null, 'خديجة بادحدح', 'الوزن', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('سخان بواتق دوار مع حمام مائي دوار', 'Se.WB01710 - Mod.RE100B', null, null, 'خديجة بادحدح', 'التسخين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('فرن حتى 200 ْ م', 'Se.SG94/09/378 - callen kamp', null, null, 'مجهول', 'التسخين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز تبخير دوران ', 'Se.29611423 - Labconco', null, null, 'دينا باخطمة', 'التبخير', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('مضخة (كحلي)', 'Se.M - Cat.PUB580011J', null, null, 'دينا باخطمة', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز تقطير', 'Mod. XC-200', null, null, 'مجهول', 'تنقية الماء', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('دولاب الغازات', 'Hamilton', null, null, 'مجهول', 'شفط الغازات', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ثلاجة عادية 6 قدم', 'Se.40600258 - DAEWOO', null, null, 'مجهول', 'التبريد', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('فرن حتى 400 ْ م', 'Se.23887 - Carbolite', null, null, 'مجهول', 'التسخين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('أسطوانة نيتروجين', null, null, null, null, 'حفظ النيتروجين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('سخان مع مقلب مغناطيسي', 'Se.775951025439 - Thermolyne', null, null, null, 'التسخين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز مضخة تفريغ (رمادي)', 'Se.XHL081940', null, null, 'خديجة بادحدح', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('هزاز أنابيب', 'Se.1068990655565 - Mod.S4615', null, null, 'أسماء الحربي', 'المزج والخلط', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('هزاز  ', 'Se.1863070601999 - Mod. M63210-33', null, null, null, null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('خلاط كهربائي', '36BL23', null, null, 'هدى الكريثي', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز تفتيت الأنسجة', '71101129703', null, null, 'مجهول', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('جهاز هضم الطعام كيلدال', 'Se. 91890101', 1005566, '1443-8-3', 'هلا المرزوقي', null, 'مؤسسة البحاثة للتجهيزات الطبية', null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
VALUES ('ملحق', 'Se. 91888198', 1005566, '1443-8-3', 'هلا المرزوقي', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);

-- Lab 200
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('فريزر -80  رقم (1)  صندوق حفظ (89) عينة', 'Se.12020060 - Mod.MDF-U54V Sanyo', '349', '1437-9-24', 'الاشراف المشترك', 'التجميد', '', null, 5.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('فريزر -80  رقم (1)  رف واحد', 'Se.12020060 - Mod.MDF-U54V Sanyo', '349', '1437-9-24', 'الاشراف المشترك', 'التجميد', null, null, 150.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('فريزر -80  رقم (2)  صندوق حفظ (89) عينة', 'Se.12020056 - Mod.MDF-U54V Sanyo', '349', '1437-9-24', 'الاشراف المشترك', 'التجميد', null, null, 5.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('فريزر -80  رقم (2)  رف واحد', 'Se.12020056 - Mod.MDF-U54V Sanyo', '349', '1437-9-24', 'الاشراف المشترك', 'التجميد', null, null, 150.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('فريزر -80  رقم (3)  صندوق حفظ (89) عينة', 'Se.12010004 - Mod.MDF-U54V Sanyo', '1050', '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null, 5.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('فريزر -80  رقم (3)  رف واحد', 'Se.12010004 - Mod.MDF-U54V Sanyo', '1050', '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null, 150.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('فريزر -80  رقم (4)  صندوق حفظ (89) عينة', 'Se.12020046 - Mod.MDF-U54V Sanyo', '1050', '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null, 5.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('فريزر -80  رقم (4)  رف واحد', 'Se.12020046 - Mod.MDF-U54V Sanyo', '1050', '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null, 150.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('ثلاجة صندوق حفظ (89) عينة', '1209 - Whirpool', null, '', 'الإشراف', 'التبريد', null, null, 3.0, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('ثلاجة  رف واحد', '1209 - Whirpool', null, '', 'الإشراف', 'التبريد', null, null, 120.0, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('أسطوانة غاز أكسجين طبي عدد(1)أبيض', null, null, '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('أسطوانة غاز أكسجين عدد(2)أخضر', null, null, '', 'عدد(1) خاصة بأسماء المحمدي(مؤسسة سلطانة دهلوي)', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('أسطوانة غاز نيتروجين عدد(1)أزرق', null, null, '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('أسطوانة غاز هيدروجين عدد(2)أحمر', null, null, '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('أسطوانة غاز هواء مختلط عدد(2)رمادي', null, null, '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('عربة لنقل أسطوانة الغاز', null, '1667', '1434-1-3', 'أسماء المحمدي', '', null, null, null, 'مؤسسة إبراهيم السقاف', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
VALUES ('أسطوانة غاز هيليوم عدد(1)أصفر وأسود', null, '', '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي', 200, null);

-- sqlite3 LabUP.db -init LabUP.sql