
/* Drop Tables */

DROP TABLE sys_role_auth CASCADE CONSTRAINTS;
DROP TABLE sys_authority CASCADE CONSTRAINTS;
DROP TABLE sys_user_role CASCADE CONSTRAINTS;
DROP TABLE sys_user CASCADE CONSTRAINTS;
DROP TABLE sys_dept CASCADE CONSTRAINTS;
DROP TABLE sys_role CASCADE CONSTRAINTS;




/* Create Tables */

-- sysAuthority
CREATE TABLE sys_authority
(
	-- id
	id varchar2(64) NOT NULL,
	-- name
	name nvarchar2(64),
	-- authDesc
	auth_desc nvarchar2(100),
	-- createUser
	create_user varchar2(64),
	-- createDate
	create_date date,
	-- updateUser
	update_user varchar2(64),
	-- updateDate
	update_date date,
	-- remarks
	remarks nvarchar2(200),
	PRIMARY KEY (id)
);


-- sysDept
CREATE TABLE sys_dept
(
	-- id
	id varchar2(64) NOT NULL,
	-- name
	name nvarchar2(50),
	-- deptDesc
	dept_desc nvarchar2(100),
	-- parentId
	parent_id varchar2(64),
	-- status
	status char,
	-- createUser
	create_user varchar2(64),
	-- createDate
	create_date date,
	-- updateUser
	update_user varchar2(64),
	-- updateDate
	update_date date,
	-- remarks
	remarks nvarchar2(200),
	PRIMARY KEY (id)
);


-- sysRole
CREATE TABLE sys_role
(
	-- id
	id varchar2(64) NOT NULL,
	-- name
	name nvarchar2(64),
	-- roleDesc
	role_desc nvarchar2(100),
	-- status
	status char(1),
	-- createUser
	create_user varchar2(64),
	-- createDate
	create_date date,
	-- updateUser
	update_user varchar2(64),
	-- updateDate
	update_date date,
	-- remarks
	remarks nvarchar2(200),
	PRIMARY KEY (id)
);


-- sysRoleAuth
CREATE TABLE sys_role_auth
(
	-- id
	id varchar2(64),
	-- roleId
	role_id varchar2(64),
	-- authorityId
	authority_id varchar2(64),
	-- createUser
	create_user varchar2(64),
	-- createDate
	create_date date,
	-- updateUser
	update_user varchar2(64),
	-- updateDate
	update_date date,
	-- remarks
	remarks nvarchar2(200)
);


-- sysUser
CREATE TABLE sys_user
(
	-- id
	id varchar2(64) NOT NULL,
	-- userName
	username varchar2(64),
	-- password
	password varchar2(64),
	-- name
	name nvarchar2(20),
	-- birth
	birth date,
	-- phone
	phone varchar2(50),
	-- address
	address nvarchar2(100),
	-- status
	status char,
	-- deptId
	dept_id varchar2(64),
	-- createUser
	create_user varchar2(64),
	-- createDate
	create_date date,
	-- updateUser
	update_user varchar2(64),
	-- updateDate
	update_date date,
	-- remarks
	remarks nvarchar2(200),
	PRIMARY KEY (id)
);


-- sysUserRole
CREATE TABLE sys_user_role
(
	-- id
	id varchar2(64),
	-- userId
	user_id varchar2(64),
	-- roleId
	role_id varchar2(64),
	-- createUser
	create_user varchar2(64),
	-- createDate
	create_date date,
	-- updateUser
	update_user varchar2(64),
	-- updateDate
	update_date date,
	-- remarks
	remarks nvarchar2(200)
);



/* Create Foreign Keys */

ALTER TABLE sys_role_auth
	ADD FOREIGN KEY (authority_id)
	REFERENCES sys_authority (id)
;


ALTER TABLE sys_user
	ADD FOREIGN KEY (dept_id)
	REFERENCES sys_dept (id)
;


ALTER TABLE sys_role_auth
	ADD FOREIGN KEY (role_id)
	REFERENCES sys_role (id)
;


ALTER TABLE sys_user_role
	ADD FOREIGN KEY (role_id)
	REFERENCES sys_role (id)
;


ALTER TABLE sys_user_role
	ADD FOREIGN KEY (user_id)
	REFERENCES sys_user (id)
;



/* Comments */

COMMENT ON TABLE sys_authority IS 'sysAuthority';
COMMENT ON COLUMN sys_authority.id IS 'id';
COMMENT ON COLUMN sys_authority.name IS 'name';
COMMENT ON COLUMN sys_authority.auth_desc IS 'authDesc';
COMMENT ON COLUMN sys_authority.create_user IS 'createUser';
COMMENT ON COLUMN sys_authority.create_date IS 'createDate';
COMMENT ON COLUMN sys_authority.update_user IS 'updateUser';
COMMENT ON COLUMN sys_authority.update_date IS 'updateDate';
COMMENT ON COLUMN sys_authority.remarks IS 'remarks';
COMMENT ON TABLE sys_dept IS 'sysDept';
COMMENT ON COLUMN sys_dept.id IS 'id';
COMMENT ON COLUMN sys_dept.name IS 'name';
COMMENT ON COLUMN sys_dept.dept_desc IS 'deptDesc';
COMMENT ON COLUMN sys_dept.parent_id IS 'parentId';
COMMENT ON COLUMN sys_dept.status IS 'status';
COMMENT ON COLUMN sys_dept.create_user IS 'createUser';
COMMENT ON COLUMN sys_dept.create_date IS 'createDate';
COMMENT ON COLUMN sys_dept.update_user IS 'updateUser';
COMMENT ON COLUMN sys_dept.update_date IS 'updateDate';
COMMENT ON COLUMN sys_dept.remarks IS 'remarks';
COMMENT ON TABLE sys_role IS 'sysRole';
COMMENT ON COLUMN sys_role.id IS 'id';
COMMENT ON COLUMN sys_role.name IS 'name';
COMMENT ON COLUMN sys_role.role_desc IS 'roleDesc';
COMMENT ON COLUMN sys_role.status IS 'status';
COMMENT ON COLUMN sys_role.create_user IS 'createUser';
COMMENT ON COLUMN sys_role.create_date IS 'createDate';
COMMENT ON COLUMN sys_role.update_user IS 'updateUser';
COMMENT ON COLUMN sys_role.update_date IS 'updateDate';
COMMENT ON COLUMN sys_role.remarks IS 'remarks';
COMMENT ON TABLE sys_role_auth IS 'sysRoleAuth';
COMMENT ON COLUMN sys_role_auth.id IS 'id';
COMMENT ON COLUMN sys_role_auth.role_id IS 'roleId';
COMMENT ON COLUMN sys_role_auth.authority_id IS 'authorityId';
COMMENT ON COLUMN sys_role_auth.create_user IS 'createUser';
COMMENT ON COLUMN sys_role_auth.create_date IS 'createDate';
COMMENT ON COLUMN sys_role_auth.update_user IS 'updateUser';
COMMENT ON COLUMN sys_role_auth.update_date IS 'updateDate';
COMMENT ON COLUMN sys_role_auth.remarks IS 'remarks';
COMMENT ON TABLE sys_user IS 'sysUser';
COMMENT ON COLUMN sys_user.id IS 'id';
COMMENT ON COLUMN sys_user.username IS 'userName';
COMMENT ON COLUMN sys_user.password IS 'password';
COMMENT ON COLUMN sys_user.name IS 'name';
COMMENT ON COLUMN sys_user.birth IS 'birth';
COMMENT ON COLUMN sys_user.phone IS 'phone';
COMMENT ON COLUMN sys_user.address IS 'address';
COMMENT ON COLUMN sys_user.status IS 'status';
COMMENT ON COLUMN sys_user.dept_id IS 'deptId';
COMMENT ON COLUMN sys_user.create_user IS 'createUser';
COMMENT ON COLUMN sys_user.create_date IS 'createDate';
COMMENT ON COLUMN sys_user.update_user IS 'updateUser';
COMMENT ON COLUMN sys_user.update_date IS 'updateDate';
COMMENT ON COLUMN sys_user.remarks IS 'remarks';
COMMENT ON TABLE sys_user_role IS 'sysUserRole';
COMMENT ON COLUMN sys_user_role.id IS 'id';
COMMENT ON COLUMN sys_user_role.user_id IS 'userId';
COMMENT ON COLUMN sys_user_role.role_id IS 'roleId';
COMMENT ON COLUMN sys_user_role.create_user IS 'createUser';
COMMENT ON COLUMN sys_user_role.create_date IS 'createDate';
COMMENT ON COLUMN sys_user_role.update_user IS 'updateUser';
COMMENT ON COLUMN sys_user_role.update_date IS 'updateDate';
COMMENT ON COLUMN sys_user_role.remarks IS 'remarks';



