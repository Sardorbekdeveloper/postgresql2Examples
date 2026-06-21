/* INDEX
Talabalarning student_id ustunini tezkor qidiruv uchun indekslang.*/
Create database university;

Create table student(
    student_id serial Primary key,
    studentfirstname varchar(30),
    studentlastname varchar(30),
    studentgroup varchar(6),
    address varchar(20),
    age int,
    grade float,
    course_id int
);

Create table courses(
    course_id serial Primary key,
    coursename varchar (50)
   );

Create table teacher(
    teacher_id serial Primary key,
    name varchar (50),
    subject varchar(100)
);

Create index idx_student_id 
on student(student_id);


ORDER BY
/*
Talabalarni baholar bo'yicha katta (DESC) va kichik (ASC) tartibda saralang.
*/
Select * from student
order by grade asc ;                              || or (desc)

OFFSET va LIMIT
/*
5-o'rindagi talabalardan boshlab, keyingi 10 talabani qaytaring.
*/
select * from student
order by grade asc
 limit 10 OFFSET 4;


GROUP BY

Talabalarni shahar bo'yicha guruhlang va har bir shahar bo'yicha o'quvchilar sonini hisoblang.

AS

Talabalar jadvalidagi birth_date ustunini tugilgan_sana deb nomlang va uni qaytaring.

UNION

Ikki turli kurslar bo'yicha talabalar ro'yxatini birlashtirib, yagona ro'yxatni tuzing.

HAVING

Har bir kurs bo'yicha o'rtacha bahosi 80 dan yuqori bo'lgan kurslarni qaytaring.

BETWEEN, OR, AND

Baholari 70 va 90 orasida bo'lgan yoki Toshkent shahrida yashaydigan talabalarning ma'lumotlarini qaytaring.

LIKE va ILIKE

Ismi "sh" harflari bilan boshlanadigan yoki tugaydigan talabalarning ma'lumotlarini qidirib toping. Katta-kichik harflarga e'tibor bermaslik sharti bilan qidiruv bajaring.
*/