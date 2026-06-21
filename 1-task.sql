/* INDEX
Talabalarning student_id ustunini tezkor qidiruv uchun indekslang.*/
Create database university;

Create table student(
    student_id serial,
  firstname varchar(30),
   lastname varchar(30),
  group_name varchar(6),
    address varchar(20),
    age int,
    birth_date date,
    grade float,
    course_id int,
    coursename varchar(20)
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


/*GROUP BY
Talabalarni shahar bo'yicha guruhlang va har bir shahar bo'yicha o'quvchilar sonini hisoblang.
*/
SELECT address, COUNT(*) AS student_count
from student
GROUP BY address;
/*
AS
Talabalar jadvalidagi birth_date ustunini tugilgan_sana deb nomlang va uni qaytaring.
*/
Select birth_date as tugilgan_sana
from student;

/*UNION
Ikki turli kurslar bo'yicha talabalar ro'yxatini birlashtirib, yagona ro'yxatni tuzing.
*/
SELECT firstname, lastname
FROM student
WHERE coursename = 'js'
UNION
SELECT firstname, lastname
FROM student
WHERE coursename = 'python';


/*HAVING
Har bir kurs bo'yicha o'rtacha bahosi 80 dan yuqori bo'lgan kurslarni qaytaring.
*/
SELECT coursename, AVG(grade) 
FROM student
GROUP BY coursename
HAVING AVG(grade) > 80;

/*BETWEEN, OR, AND
Baholari 70 va 90 orasida bo'lgan yoki Toshkent shahrida yashaydigan talabalarning ma'lumotlarini qaytaring.
*/
SELECT * from student
WHERE (grade BETWEEN 70 and 90) or (address = 'Toshkent');

/*LIKE va ILIKE
Ismi "sh" harflari bilan boshlanadigan yoki tugaydigan talabalarning ma'lumotlarini qidirib toping. Katta-kichik harflarga e'tibor bermaslik sharti bilan qidiruv bajaring.
*/
SELECT * from student
WHERE firstname ILIKE 'sh%'
or firstname ILIKE '%sh';