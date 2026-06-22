/* INDEX

Topshiriq:
Talabalar jadvalida student_id ustunini,
O‘qituvchilar jadvalida teacher_id ustunini indekslang.*/

CREATE INDEX idx_student_id
ON student(student_id);

CREATE INDEX idx_teacher_id
ON teacher(teacher_id);

/*
ORDER BY va LIMIT
Topshiriq:
Har bir kurs bo‘yicha 10 ta eng yaxshi talabaning ismini va baholarini tartibda qaytaring.
*/
SELECT firstname, grade
FROM student
WHERE course_id = 1
ORDER BY grade DESC
LIMIT 10;

/*
GROUP BY va HAVING
Topshiriq:
Har bir o‘quvchi bo‘yicha o‘rtacha bahosi 85 dan yuqori bo‘lgan kurslarni toping va natijalarni guruhlang.
*/
SELECT course_id,
       AVG(grade) AS average_grade
FROM student
GROUP BY coursename
HAVING AVG(grade) > 85;



UNION va AS

Topshiriq:

Talabalar va o‘qituvchilarning shahar bo‘yicha ma’lumotlarini birlashtirib, yangi ustunni shaxs_turi deb nomlang. Ushbu ustun orqali "talaba" yoki "o‘qituvchi" deb ajratilsin.

BETWEEN, OR, AND

Topshiriq:

Yoshi 18 va 25 orasida bo‘lgan yoki Samarqand va Xorazm shaharlarida yashovchi talabalarning ma’lumotlarini qaytaring.

LIKE va ILIKE

Topshiriq:

Talabalar ismlari "o" harfi bilan tugaydiganlarni toping.
O‘qituvchilar ismlari katta-kichik harfga qaramasdan "R" harfi bilan boshlanadiganlarni qidiring.
OFFSET va LIMIT

Topshiriq:

20-o‘rindagi o‘qituvchidan boshlab, keyingi 5 o‘qituvchining ma’lumotlarini qaytaring.
*/