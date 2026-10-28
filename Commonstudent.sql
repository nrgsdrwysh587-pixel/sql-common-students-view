CREATE DATABASE SchoolDB_A;
GO

CREATE DATABASE SchoolDB_B;
GO

USE SchoolDB_A;
GO

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    full_name NVARCHAR(100),
    major NVARCHAR(50)
);
GO

INSERT INTO Students VALUES
(1, N'آرین محمدی', N'نرم‌افزار'),
(2, N'هستی کریمی', N'شبکه'),
(3, N'پارسا احمدی', N'نرم‌افزار'),
(4, N'الناز رضایی', N'فناوری اطلاعات');
GO

USE SchoolDB_B;
GO

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    full_name NVARCHAR(100),
    major NVARCHAR(50)
);
GO

INSERT INTO Students VALUES
(1, N'آرین محمدی', N'نرم‌افزار'),
(3, N'پارسا احمدی', N'نرم‌افزار'),
(5, N'ترانه موسوی', N'شبکه'),
(6, N'کیان جعفری', N'فناوری اطلاعات');
GO
USE SchoolDB_A;
GO

CREATE VIEW vw_CommonStudents AS
SELECT
    A.student_id,
    A.full_name,
    A.major
FROM SchoolDB_A.dbo.Students AS A
INNER JOIN SchoolDB_B.dbo.Students AS B
    ON A.student_id = B.student_id;
GO

SELECT * FROM vw_CommonStudents;
GO
