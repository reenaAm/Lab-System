CREATE TABLE Lab 
(
    labID INTEGER NOT NULL UNIQUE,
    Name TEXT NOT NULL,
    Availability TEXT,
    Comments TEXT,
    PRIMARY KEY (labID)
);

INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (252, 'معمل احياءدقيقة', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (253, 'معمل الكيمياء الحيوية', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (254, 'معمل زراعة الانسجة', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (255, 'معمل الكيمياء الحيوية', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (256, 'معمل فيزياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (257, 'معمل مركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (201, 'معمل مركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (210, 'معمل احياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (208, 'معمل احياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (205, 'معمل الكيمياء الحيوية', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) VALUES (203, 'معمل الكيمياء', 'Availabil', null);

CREATE TABLE User_(
    PhoneNumber INTEGER PRIMARY KEY,
    Email TEXT NOT NULL,
    UserName TEXT NOT NULL,
    Department TEXT NOT NULL
);

CREATE TABLE Reservation(
    DurationOfUse INTEGER NOT NULL,
    ReservationID INTEGER PRIMARY KEY,
    TotalPrice REAL NOT NULL,
    Payment TEXT NOT NULL,
    DateOfReservation TEXT NOT NULL,
    TimeOfReservation TEXT NOT NULL
);

CREATE TABLE Devices
(
    DeviceName TEXT,
    SerialNumber TEXT PRIMARY KEY,
    BaptismalNumber TEXT,
    DateOfBaptism DATE,
    CustodyOfTheStudent TEXT,
    DeviceFunction TEXT,
    Price REAL,
    Comments TEXT,
    Maintenance TEXT,
    Name TEXT,
    labID INTEGER,
    FOREIGN KEY (labID) REFERENCES Lab (labID)
);

--Lab 252
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('جهاز قياس الطيف المرئي', 'Se. 9423 UVG 1702E - UVG112602 - Typ. Helios Gamma - Thermo', null, null, 'ماجدة أبو راس', 'قياس درجة امتصاص اللون', 'الزهراوي - أنظمة النيزك', null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('قرص صلب', 'LG', null, null, 'ماجدة أبو راس', 'حفظ وتخزين البيانات', 'الزهراوي - أنظمة النيزك', null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('شاشة كمبيوتر', '999181412 - Mod.V773 - BenQ', null, null, 'ماجدة أبو راس', 'عرض البيانات', 'الزهراوي - أنظمة النيزك', null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('لوحة مفاتيح وفأرة', 'Se.04673443 - Mod.KB-1925', null, null, 'ماجدة أبو راس', 'ادخال البيانات', 'الزهراوي - أنظمة النيزك', null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('مجهر', '3A14126 - OLYMPUS', null, null, 'ماجدة أبو راس', 'فحص العينات', 'الزهراوي - أنظمة النيزك', null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('كاميرا', '3020379C5 - Mod.DP12-2 - OLYMPUS', null, null, 'ماجدة أبو راس', 'التصوير', 'الزهراوي - أنظمة النيزك', null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('شاشة تابعة للكاميرا', '3020379B3 - Mod.DP12-2 - OLYMPUS', null, null, 'ماجدة أبو راس', 'العرض', 'الزهراوي - أنظمة النيزك', null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('طابعة', 'HU31N1Q1F1 - hp deskjet 3325 -HP', null, null, 'ماجدة أبو راس', 'الطباعة', 'الزهراوي - أنظمة النيزك', null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('خلاط للمحاليل', 'Mod.TTS2 - Yellow line', null, null, 'هدى الكريثي', 'المزج والخلط', null, null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('سخان مع مقلب', '004n1370 - fisher scientific', null, null, 'زين الشريف', 'التسخين', null, null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('فريزر - 20 (ثلاجة)', 'COO68IFM1109 - FRIMED', null, null, 'هدى الكريثي', 'التجميد', null, null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('مطحنة', 'Mod.SM300 - RETSCH', 1362, '1436-10-13', 'آمال عاشور', 'الطحن', 'شركة كوثر إبراهيم', null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID) 
VALUES ('جهاز تقطير الماء', 'CluvFL273363 - Mod.Classic UVF MK2 - ELGA', null, null, 'مجهول', 'تقطير الماء', null, null, null, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('ميزان خاص بوزن الفئران', 'Typ.Olympia Plus - SOEHNLE', NULL, NULL, 'أسماء الحربي', 'الوزن', 'لا يوجد تعميد', NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('حضان مع هزاز', '127944 - MOD.4334 THERMO SCINTIFIC', 308, '1434-3-21', 'جيهان رحيمي', 'حفظ العينات', 'شركة الجيل الطبية', NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('طحانة تحليلية صغيرة', 'mod.A10BS000 - IKA', 1323, '1436-10-10', 'آمال عاشور', 'الطحن', 'مؤسسة نسيم الصفصاف', NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('جهاز تعقيم المواد مع التجفيف', '22017 - Mod. GLS - Castle', NULL, NULL, 'مجهول', 'التعقيم', NULL, NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('فرن', 'Se. 9509-303 - Preaision', NULL, NULL, 'مجهول', 'التسخين', NULL, NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('جهاز طرد مركزي', 'Se.799090722 - mod. ALC PK 121R', NULL, NULL, 'مجهول', 'فصل المواد', NULL, NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('ثلاجة', 'SAMSAUING', NULL, NULL, 'مجهول', 'التبريد', NULL, NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('جهاز كمبيوتر', NULL, NULL, NULL, 'الإشراف المشترك', NULL, 'تم أخذه من الإدارة', NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('قرص صلب', 'Se.CZC1412LPX - HP', NULL, NULL, 'الإشراف المشترك', NULL, 'تم أخذه من الإدارة', NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('شاشة', 'Se. 3CQ131B3YW - HP', NULL, NULL, 'الإشراف المشترك', NULL, 'تم أخذه من الإدارة', NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('لوحة مفاتيح وفأرة', 'Mod. KU - 0316 - HP', NULL, NULL, 'الإشراف المشترك', NULL, 'تم أخذه من الإدارة', NULL, NULL, 'معمل احياءدقيقة', 252);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, Price, Comments, Maintenance, Name, labID)
VALUES ('ميزان', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'معمل احياءدقيقة', 252);


--Lab 255
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('حمام مائي', '9410-134 - mod.183 - PRECISION',null, null, 'فوزية النويصر', 'التسخين', null, null, null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مازج أنابيب', 'mod. KS501 - IKA', null, null, 'مجهول', 'الخلط', null, null, null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ميكروسكوب تشريحي', '148028 -Typ. 020-507.010 - LEICA', null, null, 'بلقيس المعينة', 'فحص العينات', null, null, null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ثلاجة', 'SR-57NXA - SAMSAUING', null, null, null, 'التبريد', null, null, null, 'معمل كيمياء حيويه',255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز التحليل المناعي مع ملحقاته', 'Mod. MAGPIX - Se.MAGPX14211701-Luminex', 666, '20-6-1436', 'جنى باشراحيل', 'تحليل المكونات الحيوية', null, null,null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('شاشة', 'Dell- Se.CN-GC97H-72872-460-A6LL', 666, '20-6-1436', 'جنى باشراحيل', 'العرض', null, null, null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('قرص صلب', 'Dell- OPTIPLX 7010', 666, '20-6-1436', 'جنى باشراحيل', 'حفظ البيانات', null, null, null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('لوحة مفاتيح', 'Se.CN-0DJ454-71581-45N-079V-A01', 666, '20-6-1436', 'جنى باشراحيل', 'ادخال البيانات', null, null, null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ماسح معلومات', 'Datalogic-Typ.GD4330-WH- Se.G14D68067-CRYPHON', 666, '20-6-1436', 'جنى باشراحيل', 'المسح', null, null, null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز هزاز مداري السرعه', 'Mod. 4625-1CEM - Thermo Scientific - Se.C1882131264780', 666, null, 'جنى باشراحيل', 'المزج والخلط', null, null, null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('هزاز للأنابيب دوراني', 'Typ. VM3 - MARIENFELD', null, null, 'لبنى نوار', 'المزج والخلط', null, null, null, 'معمل كيمياء حيويه', 255);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('كابينة اشعة فوق بنفسجية', '2097 - mod.mini2  ', null, null, 'مجهول', 'توفير بيئة مناسبة', null, null, null, 'معمل كيمياء حيويه', 255);

--Lab 256
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('حضان ثاني اكسيد الكربون', '1311N203XL104 - MOD.NB-203XL', 1629, '1434-11-12', 'رانيا مقادمي', 'حفظ العينات', null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('اسطوانةغاز ثاني اكسيد الكربون', null, null, null, 'أسماء الحربي', null, null, 'مؤسسة العصر القادم', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مجهر تشريح استيريو', '350255(SZ674S) - OPTIKA', 1629,'1434-11-12', 'رانيا مقادمي', 'فحص الشرائح', null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('حمام مائي مع هزاز', 'Se.1145110k - Mod. 1083 - GFL', null, null, 'جيهان خان', 'التسخين', null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ملحق', 'TM-30A', null, null, 'جيهان خان', null, null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مازج أنابيب', '006N0332 - MOD.231 - FISHER SCIENTIFIC', null, null, 'مجهول', 'المزج والخلط', null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مجهر ضوئي ', '9901917 - OPTIC IVYMEN SYSTEM', null, null, null, 'فحص الشرائح', null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ثلاجة معملية', '398F0010 - Sanyo Medicool MPR-211F', null, null, 'أسماء الحربي', 'التبريد', null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('spin coater', '37116 - Mod. KWUA', null, null, null, null, null, 'في منزل الطالبة', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ميزان حساس بحواجز (تحليلي رقمي)', '4600904 - Precisa', 924,'1432-7-9', 'أسماء الحربي', 'الوزن', null, 'شركة كوثر إبراهيم (في منزل الطالبة)', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مسخن مع محرك مغناطيسي', 'Mod. 1000 - JENWAY', null, null, null, 'التسخين وخلط العينات', null, 'في منزل الطالبة', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ميزان رقمي', 'SF-400 - Digital Balance', null, null, 'مجهول', 'الوزن', null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مجهر ضوئي مع كاميرا', 'Se.13644 - Prior', null, null, 'لبنى نوار', 'فحص الشرائح', null,null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ملقط جراحة (4)', 'null', 1665, '1434-1-3', 'أسماء المحمدي', null, null, 'مؤسسة العصر القادم', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مقص جراحة عدد (4)', null, 1665, '1434-1-3', 'أسماء المحمدي', null, null, 'مؤسسة العصر القادم', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ماصة الكترونية عدد (3)', 'Se. 23041464 - AG8171 - SOCOREX', null, null, 'رانيا مقادمي', null, null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ماصة الكترونية', 'Se. 23041465 - AG8161 - SOCOREX', null, null, 'رانيا مقادمي', null, null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ماصة الكترونية', 'Se.22011158', null, null, null, null, null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('شاشة كمبيوتر', 'Se.CN904P5F5 - HP1710', null, null, null, 'عرض البيانات', null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('لوحة مفاتيح', 'CT. BDMHEOCOKZX30H -HP', null, null, null, 'ادخال البيانات', null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('قرص صلب', 'Se.TRF5020VOW', null, null, null, 'تخزين البيانات', null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('سخان مع مقلب', 'Se.03200904-Mod.HS10-2- Torrey pines scientific', null, null, 'مجهول', 'التسخين والمزج', null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ميزان حساس  ', 'Se.1113431099 - Mod.B303 - College', null, null, 'زين الشريف', null, null, null, null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز التدوير بغطاء له رف واحد', null, 526,'1438-11-18', null, null, null, 'مؤسسة سهام باغفار التجارية (في منزل الطالبة)', null, 'معمل فيزياء', 256);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ملحق مضخة للتفريغ', null, 526,'1438-11-18', null, null, null, 'مؤسسة سهام باغفار التجارية (في منزل الطالبة)', null, 'معمل فيزياء', 256);


INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('معقم للانابيب(بالالترا سونيك)', 'Se.8891E-MTH - COLE PARMER', null, null, 'مجهول', 'التعقيم', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('دولاب غازات', 'HAMILTON', null, null, 'مجهول', 'التخلص من الغازات السامة', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ثلاجة', 'WHIRLPOOL', null, null, 'مجهول', 'حفظ العينات', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('صانعة ثلج', 'Se.1L4164 - ILSHIN', null, null, 'مجهول', 'صانعة ثلج', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('فرن', 'Se.9508-205 - PRECISION', null, null, 'مجهول', 'التسخين', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز هزاز (shaker)', 'Se.090913229 - titramax', null, null, 'مجهول', 'تحريك العينات', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('سخان', 'Se.1755070902595 -Mod.HP130910-33 - BARNSTEAD INTER.',null, null, 'أسماء الحربي', 'التسخين', null, 'نتأكد من التعميد', null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES (null, null, null, null, null, 'مضاعفة ال دي إن أي', null, null, null, 'معمل مركزي',257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('دوار (محرك دوران) أزرق', 'Se.04005 - Schutt petriturn-c', null,null, 'مجهول', 'تحريك العينات', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز تجفيف عينات', '5305ZQ410254 - Vacufuge Plus', 930,'1432-7-9', 'أسماء الحربي', 'تجفيف العينات', null, 'مؤسسة أنظمة النيزك', null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('قارئ لاطباق 96 فتحة', 'Se.1102006873 - PR3100TSC(Bio-rad)', null, null, 'أسماء الحربي', 'تحليل المكونات الحيوية', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('طابعة', 'CNBW82W5HM - HP LASer jet (2015)', null, null, 'أسماء الحربي', 'الطباعة', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('غاسل عينات أطباق 96 فتحة', 'Se.EC12D414309 - PW 40 Microplate Washer (Bio-rad)', 928,'1438-7-9', 'أسماء الحربي', 'غاسل أطباق 96 فتحة', null, 'شركة الجيل الطبية', null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز تحليل مثيلية الدي إن أي ', '53015 - Qigen', null,'1435-7-26', 'هديل السفياني', 'تحليل مثيلية الأحماض النووية', null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('كمبيوتر محمول', 'hp لا يوجد رقم ', null,'1436-26', 'هديل السفياني', 'معالجة وعرض البيانات', null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مضخة', 'Se.05266557- Typ.N816.1.2KN.18 - KIF LAB', null,'137-7-26', 'هديل السفياني', 'الضخ', null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ملحق WORK statin', '000003-12C - PyromarkQ96', null,'1438-7-26', 'هديل السفياني', null, null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز تجفيف عينات', 'Se.DNA110-5H320725-1G - Mod.DNA110 - Savant', null, null, 'مجهول', 'تجفيف العينات', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز طرد مركزي', 'Se.100386 - SIGMA - Typ.3-16K', null, null, 'خديجة بالعمش', 'فصل العينات', null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('فرن', 'LEEC mod.SSS - Se.9307', null, null, null, null, null, null, null, 'معمل مركزي',257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز ماك كو-كوبا كلنيكل قياس كثافة العظم ', 'Se.0105A0298 ', null, null, 'سوسن خوجة', null, null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('كمبيوتر محمول', 'Se.X4067050H - TOSHIBA', null, null, null, null, null, null, null, 'معمل مركزي', 257);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ملقب مغناطيسي ', '30361202 - SCHUTT PETRITUM', null, null, null , 'المزج', null,  'أزرق ', null, 'معمل مركزي', 257);


INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مجهر', '9911036 - optic ivymen', null, null, null, 'فحص الشرائح', null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مولد طاقة', 'Auto stac - TMR-5082364 - Mod.ST1500W', null, null, 'نورة الأحمدي', 'توليد الطاقة', null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('مولد طاقة', 'auto stac- Mod.ST1000W', null, null, 'نورة الأحمدي', 'توليد الطاقة', null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('شاشة كمبيوتر', 'Se.SN00F9HKAG100410W-Samsung', null, null, null, 'عرض البيانات', null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('قرص صلب', 'LG IEEE488.2', null, null, null, 'حفظ البيانات', null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('طابعة', 'Se.CN-680D808W - HP', null, null, null, 'الطباعة', null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('لوحة مفاتيح', 'XP1471156329 - Genius', null, null, null, 'ادخال البيانات', null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('سخان', 'Mod.4659-00 - Cole-Parmer Instrument Company', null, null, null, 'التسخين', null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('سخان', 'Se.8593 - Nickel Electro LTD', null, null, null, 'التسخين', null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('اسطوانة غاز هيليوم', null, null, null, null, null, null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('ثلاجة صغيرة', '8102-202-454 - SAMSAUING', null, null, 'مجهول', null, null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('حمام مائي', '4081401 - LSB-045S', null, null, 'مجهول', null, null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('نظام تعداء-جهاز تثقيب كهربائي ذو خاصية شعرية', 'Se.MP924901 - Mod.MPK5000 - invitrogen', 427,'1439-8-10', 'روابي زاهد', null, null, 'توريدات الخليج', null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز تعقيم تابع لجهاز تجفيف بالتبريد ', 'Se.SP20765 - Mod.ASB230 - Astell', null, null, null, null, null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('جهاز تحليل كهربائي', '3040 - V20-SET SCIE-PLAS', null, null, null, null, null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('اضاءة ال سي دي للميكروسكوب', 'Se. 350365 - OPTIKA Mod. CL-01', 1674,'1434-1-4', 'أسماء المحمدي', null, null, 'شركة نجم الجزيرة', null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('حامل مع ذراع اصطناعية للميكروسكوب', 'Se. 347813 - OPTIKA Mod. SZ-STL3', 1674,'1434-1-4', 'أسماء المحمدي', null, null, 'شركة نجم الجزيرة', null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('فرن ', 'Se.5094-09-415 - GALLE NKAMP', null, null, 'دينا باخطمه', null, null, null, null, 'معمل احياء', 210);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Price], [Comments], [Maintenance], [Name], [labID]) VALUES ('وحدة رحلان كهربائي أفقي- صغير', 'Se. 2314 - Mod. HU13', null, null, null, null, null, null, null, 'معمل احياء', 210);


