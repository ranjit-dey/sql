create table EMP(
	EmpId int PRIMARY key,
    EmpName varchar(20),
    DeptName VARCHAR(10)
);

insert into EMP (EmpId, EmpName, DeptName) values
(1, 'XYA', 'AA'),
(2, 'XYB', 'AA'),
(3, 'XYC', 'AA'),
(4, 'XYD', 'AA'),
(5, 'XYE', 'AB'),
(6, 'XYF', 'AB'),
(7, 'XYG', 'AB'),
(8, 'XYH', 'AC'),
(9, 'XYI', 'AC'),
(10, 'XYJ', 'AC'),
(11, 'XYK', 'AD'),
(12, 'XYL', 'AD'),
(13, 'XYM', 'AE');

SELECT * FROM EMP;

SELECT AVG(Num)
FROM (
    SELECT DeptName, COUNT(EmpId) AS Num
    FROM EMP
    GROUP BY DeptName
) AS EC;
