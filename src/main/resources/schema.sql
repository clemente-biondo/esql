/*****************************************************/
CREATE SCHEMA esql;

create table esql.equery(
  equery_id int not null auto_increment primary key,
  title varchar(255) not null,
  description varchar(255),
  data CLOB (32000) not null
);

create table esql.squery_mapping(
  web_path varchar(255) not null primary key,
  description varchar(255),
  equery_id int not null,
  FOREIGN KEY (equery_id) REFERENCES esql.equery(equery_id)
);



/*****************************************************/
CREATE SCHEMA sample;
 
create table sample.worker(
  worker_id varchar(32) not null PRIMARY KEY,
  firstname varchar(255) not null,
  lastname varchar(255) not null,
  username varchar(32) not null UNIQUE
);

create table sample.department(
  dept_id varchar(32) not null PRIMARY KEY,
  description varchar(255) not null UNIQUE,
  deptManager varchar(32) not null ,
  headdept_id varchar(32),
  FOREIGN KEY (deptManager) REFERENCES sample.worker(worker_id),
  FOREIGN KEY (headdept_id) REFERENCES sample.department(dept_id)
);

create table sample.project(
  project_id varchar(32) not null PRIMARY KEY,
  description varchar(255) not null UNIQUE,
  projectManager varchar(32) not null,
  FOREIGN KEY (projectManager) REFERENCES sample.worker(worker_id)
);

create table sample.project_worker(
  project_id varchar(32) not null,
  worker_id varchar(32) not null,
  PRIMARY KEY (project_id,worker_id),
  FOREIGN KEY (worker_id) REFERENCES sample.worker(worker_id)
);

create table sample.roles(
  role_id varchar(32) not null PRIMARY KEY,
  description varchar(255) not null UNIQUE
);

create table sample.user_roles(
  username varchar(32) not null,
  role_id varchar(32) not null,
  PRIMARY KEY(username,role_id),
  FOREIGN KEY (username) REFERENCES sample.worker(username),
  FOREIGN KEY (role_id) REFERENCES sample.roles(role_id) 
);
