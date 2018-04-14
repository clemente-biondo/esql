insert into worker values('E1','ROBERT','LEE','rlee');
insert into worker values('E2','MARGARET','PARKER','mparker');
insert into worker values('E3','MIKE','SMITH','mikesm');
insert into worker values('E4','ANGELA','WHITE','awhite');
insert into worker values('E5','CARL','HOPKINS','chopk');
insert into worker values('E6','ANTHONY','SAGAN','asagan');
insert into worker values('E7','MARK','THOMPSON','mthom');
insert into worker values('E8','LUISA','WALKER','luiwa');
insert into worker values('E9','CARLA','BROWN','carbr');
insert into worker values('E10','MARTHA','SPENCER','maspe');
insert into worker values('E11','JULIA','LEE','julee');

insert into worker values('E12','HANNAH','JACKSON','hajack');
insert into worker values('E13','FRANK','TRAVIS','ftrav');
insert into worker values('E14','ROGER','KNIGHT','rkni');
insert into worker values('E15','MANUEL','THOMPSON','mathom');
insert into worker values('E16','LORETTA','UGHES','lugh');
insert into worker values('E17','MARK','BROWN','mbrown');
insert into worker values('E18','LUISA','WILLIAMS','luwil');
insert into worker values('E19','ODETTE','BROWN','odebr');
insert into worker values('E20','BILL','WATERS','biwat');
insert into worker values('E21','KATHRIN','FLANDERS','kfland');
insert into worker values('E22','RENATA','MARTENS','rmart');
insert into worker values('E23','JOHN','FLANAGAN MARTENS','jflag');


insert into department values('HEAD','Director Office','E1',null);
insert into department values('DA00','Production','E2','HEAD');
insert into department values('DB00','Research and Development','E2','HEAD');
insert into department values('DC00','Purchasing','E3','HEAD');
insert into department values('DD00','Marketing','E1','HEAD');
insert into department values('DE00','Human Resource Management','E5','HEAD');
insert into department values('DF00','Accounting and Finance','E6','HEAD');

insert into department values('DD10','Sales North','E1','DD00');
insert into department values('DD20','Sales South','E7','DD00');

insert into department values('DA10','Managed Operations','E8','DA00');
insert into department values('DA20','Software lab Direction','E9','DA00');
insert into department values('DA21','Software lab I','E8','DA20');
insert into department values('DA22','Software lab II','E10','DA20');

insert into department values('DE10','Informative Systems','E11','DE00');
insert into department values('DE11','IT Support','E23','DE10');

insert into project values('P001','Acme Payroll System','E8');
insert into project values('P002','Waltman Consulting Helpdesk Support','E12');
insert into project values('P003','National Aviation Simulator','E8');
insert into project values('P004','K&K Operation Support','E13');
insert into project values('P005','Internal Marketing Campaign','E1');

insert into roles values('USER','employee: Minimal access '  description varchar(255) not null UNIQUE,
);