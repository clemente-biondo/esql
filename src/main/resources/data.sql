insert into sample.worker values('E1','ROBERT','LEE','rlee');
insert into sample.worker values('E2','MARGARET','PARKER','mparker');
insert into sample.worker values('E3','MIKE','SMITH','mikesm');
insert into sample.worker values('E4','ANGELA','WHITE','awhite');
insert into sample.worker values('E5','CARL','HOPKINS','chopk');
insert into sample.worker values('E6','ANTHONY','SAGAN','asagan');
insert into sample.worker values('E7','MARK','THOMPSON','mthom');
insert into sample.worker values('E8','LUISA','WALKER','luiwa');
insert into sample.worker values('E9','CARLA','BROWN','carbr');
insert into sample.worker values('E10','MARTHA','SPENCER','maspe');
insert into sample.worker values('E11','JULIA','LEE','julee');
insert into sample.worker values('E12','HANNAH','JACKSON','hajack');
insert into sample.worker values('E13','FRANK','TRAVIS','ftrav');
insert into sample.worker values('E14','ROGER','KNIGHT','rkni');
insert into sample.worker values('E15','MANUEL','THOMPSON','mathom');
insert into sample.worker values('E16','LORETTA','UGHES','lugh');
insert into sample.worker values('E17','MARK','BROWN','mbrown');
insert into sample.worker values('E18','LUISA','WILLIAMS','luwil');
insert into sample.worker values('E19','ODETTE','BROWN','odebr');
insert into sample.worker values('E20','BILL','WATERS','biwat');
insert into sample.worker values('E21','KATHRIN','FLANDERS','kfland');
insert into sample.worker values('E22','RENATA','MARTENS','rmart');
insert into sample.worker values('E23','JOHN','FLANAGAN MARTENS','jflag');


insert into sample.department values('HEAD','Director Office','E1',null);
insert into sample.department values('DA00','Production','E2','HEAD');
insert into sample.department values('DB00','Research and Development','E2','HEAD');
insert into sample.department values('DC00','Purchasing','E3','HEAD');
insert into sample.department values('DD00','Marketing','E1','HEAD');
insert into sample.department values('DE00','Human Resource Management','E5','HEAD');
insert into sample.department values('DF00','Accounting and Finance','E6','HEAD');

insert into sample.department values('DD10','Sales North','E1','DD00');
insert into sample.department values('DD20','Sales South','E7','DD00');

insert into sample.department values('DA10','Managed Operations','E8','DA00');
insert into sample.department values('DA20','Software lab Direction','E9','DA00');
insert into sample.department values('DA21','Software lab I','E8','DA20');
insert into sample.department values('DA22','Software lab II','E10','DA20');

insert into sample.department values('DE10','Informative Systems','E11','DE00');
insert into sample.department values('DE11','IT Support','E23','DE10');


insert into sample.project values('P001','Acme Payroll System','E8');
insert into sample.project values('P002','Waltman Consulting Helpdesk Support','E12');
insert into sample.project values('P003','National Aviation Simulator','E8');
insert into sample.project values('P004','K&K Operation Support','E13');
insert into sample.project values('P005','Internal Marketing Campaign','E1');


