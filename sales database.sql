create database QuanLyBanHang;

use QuanLyBanHang;

create table Customer (
	cID int not null auto_increment primary key,
	cName varchar(30),
    cAge int check(cAge < 150)
);

create table Product (
	pID int not null auto_increment primary key,
	pName varchar(100),
    pPrice double
);

create table Orders (
	oID int not null auto_increment primary key,
    cID int not null,
	oDate date,
    oTotalPrice double,
    foreign key (cID) references customer (cID)
);

create table OrderDetail (
	oID int not null,
    pID int not null,
    odQTY int,
	foreign key (oID) references orders (oID),
	foreign key (pID) references product (pID)
);