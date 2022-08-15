-----Table Script:
create table amazon (txnmonth varchar(50),dept varchar(50),txnamount int);


insert into amazon values('Jan','Grocery',100);
insert into amazon values('Feb','Grocery',300);
insert into amazon values('Mar','Grocery',200);
insert into amazon values('Jan','Clothes',700);
insert into amazon values('Feb','Clothes',500);
insert into amazon values('Mar','Clothes',200);

-------------Answer-----------------------------
select coalesce(dept,'-') dept,coalesce(txnmonth,concat('txnmonth ',dept)) txmnt,
sum(txnamount) amt from [dbo].[amazon]
group by rollup(dept,txnmonth)
