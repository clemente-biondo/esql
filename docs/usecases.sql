select * from worker

create table worker(
  workerId varchar(32) not null PRIMARY KEY,
  name varchar(255) not null,
  surname varchar(255) not null,
  username varchar(32) not null UNIQUE
);

create table department(
  deptId varchar(32) not null PRIMARY KEY,
  description varchar(255) not null UNIQUE,
  deptManager varchar(32) not null,
  headDeptId varchar(32)
);

create table project(
  projectId varchar(32) not null PRIMARY KEY,
  description varchar(255) not null UNIQUE,
  projectManager varchar(32) not null,
);

create table project_worker(
  projectId varchar(32) not null,
  workerId varchar(32) not null,
 PRIMARY KEY(projectId,workerId)
);


create table roles(
  roleId varchar(32) not null PRIMARY KEY,
  description varchar(255) not null UNIQUE,
);

create table user_roles(
  username varchar(32) not null,
  roleId varchar(32) not null,
);