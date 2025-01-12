﻿CREATE DATABASE QL_CF
GO
USE QL_CF
GO

CREATE TABLE NHANVIEN(
	MANV CHAR(5) NOT NULL,
	TENNV NVARCHAR(100) NOT NULL,
	NGAYSINH DATETIME NOT NULL,
	GIOITINH NCHAR(5)NOT NULL,
	DIACHI NVARCHAR(100) NOT NULL,
	SODT NVARCHAR(50),
	NGAYVAO DATETIME,
	EMAIL NVARCHAR(50),
	PRIMARY KEY(MANV)
)
CREATE TABLE BAOCAO(
	MABC CHAR(10) NOT NULL,
	MANV CHAR(5) NOT NULL,
	TENBC NVARCHAR(100),
	NGAYLAP DATETIME,
	PRIMARY KEY (MABC)
)

CREATE TABLE THUCUONG(
	MATU CHAR(5) NOT NULL,
	TENTU NVARCHAR(100),
	DONGIA DECIMAL,
	PRIMARY KEY (MATU)
)

CREATE TABLE CHITIET_THUCUONG(
	MATU CHAR(5) NOT NULL,
	TENTU NVARCHAR(100),
	SOLUONG INT,
	TONGGIA DECIMAL,
	PRIMARY KEY(MATU)
)

CREATE TABLE KHACHHANG(
	MAKH CHAR(5) NOT NULL,
	TENKH NVARCHAR(100) NOT NULL,
	DIACHI NVARCHAR(100),
	PRIMARY KEY (MAKH)
)

CREATE TABLE HOADON(
	MAHD CHAR(50) NOT NULL,
	MANV CHAR(5) NOT NULL,
	MAKH CHAR(5) NOT NULL,
	NGAYLAP DATETIME,
	TONGTIEN DECIMAL NULL default N'0'
	PRIMARY KEY (MAHD, MANV, MAKH)
)
---------------------TẠO RÀNG BUỘC------------------------------------
------------ KHÓA NGOẠI ------------
ALTER TABLE BAOCAO
ADD CONSTRAINT FK_BAOCAO_MANV FOREIGN KEY(MANV) REFERENCES NHANVIEN(MANV)

ALTER TABLE HOADON
ADD CONSTRAINT FK_HOADON_MANV FOREIGN KEY(MANV) REFERENCES NHANVIEN(MANV)

ALTER TABLE CHITIET_THUCUONG
ADD CONSTRAINT FK_CTTU_MATU FOREIGN KEY(MATU) REFERENCES THUCUONG(MATU)

ALTER TABLE HOADON
ADD CONSTRAINT FK_HOADON_KH FOREIGN KEY(MAKH) REFERENCES KHACHHANG(MAKH)

--------------CHECK----------------
--1. Giới tính của Nhân viên phải là Nam hoặc Nữ
ALTER TABLE NHANVIEN
ADD CONSTRAINT CHECK_GIOITINH CHECK (GIOITINH=N'Nam' OR GIOITINH=N'Nữ')

--3. Tuổi của nhân viên phải trên 18 tuổi
ALTER TABLE NHANVIEN
ADD CONSTRAINT CHECK_TUOI CHECK (YEAR(GETDATE()) - YEAR(NGAYSINH) > 18)

SELECT*FROM HOADON

--------------UNIQUE----------------
--1. Ràng buộc Email là duy nhất không được trùng
ALTER TABLE NHANVIEN
ADD CONSTRAINT UNI_EMAIL_NV UNIQUE(EMAIL);

--2. Ràng buộc SDT là duy nhất không được trùng SDT
ALTER TABLE NHANVIEN
ADD CONSTRAINT UNI_SODT_NV UNIQUE(SODT);

--------------DEFAULT----------------
--1. Giá trị mặc định khi chưa nhập SODT cho Nhân viên là Chưa xác định
ALTER TABLE NHANVIEN 
ADD CONSTRAINT DF_SODT_NV DEFAULT N'Chưa xác định' FOR SODT


--2. Gía trị là chưa xác định nếu nhân viên chưa nhập mail
ALTER TABLE NHANVIEN 
ADD CONSTRAINT DF_EMAIL_NV DEFAULT N'Chưa xác định' FOR EMAIL
------
SELECT*FROM NHANVIEN

-------------------NHẬP LIỆU-------------------------------
SET DATEFORMAT DMY
INSERT INTO NHANVIEN(MANV, TENNV, NGAYSINH, GIOITINH, DIACHI, SODT, NGAYVAO, EMAIL)
VALUES 
	('NV1',N'Nguyễn Quốc Anh','09-10-1998',N'Nam',N'TP.HCM','0398114627','11-06-2019','quocanh09@gmail.com'),
	('NV2',N'Trần Kim Mai','22-01-2000',N'Nữ',N'Vũng Tàu','0887753728','16-05-2020','kimmaitran@gmail.com'),
	('NV3',N'Lê Hồ Quốc','12-07-1999',N'Nam',N'Long An','0399715401','30-06-2021','quocle12@gmail.com'),
	('NV4',N'Đoàn Lê Nhật','19-02-2001',N'Nam',N'Bình Thuận','0390611723','20-01-2019','doanlenhat@gmail.com'),
	('NV5',N'Nguyễn Thị Liên','22-10-1996',N'Nữ',N'Phú Yên','0385452677','22-09-2020','nguyenlien22@gmail.com'),
	('NV6',N'Phạm Quỳnh Châu','29-05-1999',N'Nữ',N'TP.HCM','0390091256','29-04-2019','chau29@gmail.com'),
	('NV7',N'Trần Minh Hiền','11-11-1991',N'Nữ',N'Nha Trang','0387677891','15-10-2020','hientran@gmail.com'),
	('NV8',N'Nguyễn Quốc Lê','22-12-1997',N'Nam',N'Đà Nẵng','0392271098','14-02-2021','lenguyen22@gmail.com'),
	('NV9',N'Phan Minh An','29-09-1993',N'Nam',N'Vũng Tàu','0391087973','05-01-2020','minhanminhan@gmail.com'),
	('NV10',N'Võ Kiên Cường','20-02-2001',N'Nam',N'Bình Dương','0382660571','11-11-2019','cuong2k1@gmail.com')

INSERT INTO BAOCAO(MABC, MANV, TENBC, NGAYLAP)
VALUES
	('BC1','NV5',N'Doanh thu quý 1','30-06-2019'),
	('BC2','NV10',N'Doanh thu quý 2','30-12-2019'),
	('BC3','NV6',N'Doanh thu năm 2019','31-12-2019'),
	('BC4','NV1',N'Doanh thu năm 2020','31-12-2020'),
	('BC5','NV5',N'Doanh thu quý 1 năm 2021','30-06-2021'),
	('BC6','NV3',N'Doanh thu quý 2 năm 2021','30-12-2021'),
	('BC7','NV4',N'Doanh thu năm 2021','31-12-2021'),
	('BC8','NV8',N'Doanh thu năm 2022','31-12-2022')
	
INSERT INTO THUCUONG(MATU, TENTU, DONGIA)
VALUES
	('TU01',N'Sữa nóng',35000),
	('TU02',N'Trà sữa',40000),
	('TU03',N'Yauort đá xay',50000),
	('TU04',N'Nước ép đào',35000),
	('TU05',N'Sữa nóng',35000),
	('TU06',N'Nước dừa',35000),
	('TU07',N'Trà vải',35000),
	('TU08',N'Trà olong',35000),
	('TU09',N'Trà Lipton',35000)

INSERT INTO KHACHHANG(MAKH, TENKH, DIACHI)
VALUES
	('KH1',N'Nguyễn Duy',N'Bình Dương'),
	('KH2',N'Nguyễn Thị Lan',N'Long An'),
	('KH3',N'Trần Anh Khôi',N'Cần Thơ'),
	('KH4',N'Phạm Luân',N'TP.HCM'),
	('KH5',N'Lê Đào',N'Quảng Nam'),
	('KH6',N'Mai Quốc Chí',N'Bình Thuận'),
	('KH7',N'Nguyễn Như',N'Vũng Tàu')

INSERT INTO HOADON(MAHD, MANV, MAKH, NGAYLAP)
VALUES
	('HD1','NV4','KH2','01-02-2019'),
	('HD2','NV1','KH4','11-02-2022'),
	('HD3','NV2','KH1','09-12-2021'),
	('HD4','NV1','KH5','25-12-2022'),
	('HD5','NV3','KH7','01-02-2023'),
	('HD6','NV9','KH2','04-07-2020'),
	('HD7','NV2','KH3','09-09-2022'),
	('HD8','NV7','KH6','12-12-2022'),
	('HD9','NV1','KH5','07-04-2021'),
	('HD10','NV8','KH4','22-11-2019')
--------------------*****************************************--------------------

--1. Thêm một thức uống.
CREATE PROC PROC_THEM_TU @MATU CHAR(5), @TENTU NVARCHAR(100), @DONGIA DECIMAL
AS
	IF EXISTS(SELECT*FROM THUCUONG WHERE MATU = @MATU)
	UPDATE THUCUONG SET  TENTU = @TENTU, DONGIA = @DONGIA
	WHERE MATU = @MATU 
		ELSE
		INSERT INTO THUCUONG 
		VALUES(@MATU,@TENTU,@DONGIA)
DROP PROC PROC_THEM_TU

EXEC PROC_THEM_TU 'TU11',N'Bạc xỉu',32000
SELECT*FROM THUCUONG

--2. Thêm thức uống vào CHITIET_THUCUONG update số lượng và đơn giá trong bảng đó
CREATE PROC PROC_THEM_CTTU @MATU CHAR(5), @TENTU NVARCHAR(100),@SOLUONG INT, @TONGGIA DECIMAL
AS
	IF EXISTS(SELECT*FROM CHITIET_THUCUONG WHERE MATU = @MATU)
	UPDATE CHITIET_THUCUONG SET  TENTU = @TENTU, SOLUONG = @SOLUONG, TONGGIA = @TONGGIA
	WHERE MATU = @MATU 
		ELSE
		INSERT INTO CHITIET_THUCUONG 
		VALUES(@MATU,@TENTU,@SOLUONG,@TONGGIA)
DROP PROC PROC_THEM_CTTU
SELECT*FROM CHITIET_THUCUONG
--3. Tìm kiếm thông tin của nhân viên.
CREATE PROC PROC_TK_NHANVIEN @MANV CHAR(5)
AS BEGIN
	IF EXISTS (SELECT*FROM NHANVIEN WHERE MANV = @MANV)
		SELECT*FROM NHANVIEN WHERE MANV = @MANV
	ELSE
		PRINT N'Không tìm thấy nhân viên này'
END

EXEC DBO.PROC_TK_NHANVIEN 'NV2'
DROP PROC PROC_TK_NHANVIEN

--4. Tìm kiếm thức uống.
CREATE PROC PROC_TK_THUCUONG @MATU CHAR(5)
AS BEGIN
	IF EXISTS (SELECT*FROM THUCUONG WHERE MATU = @MATU)
		SELECT*FROM THUCUONG WHERE MATU = @MATU
	ELSE
		PRINT N'Không tìm thức uống'
END
EXEC DBO.PROC_TK_THUCUONG 'TU04'

--5. Cập nhật lại chi tiết của 1 loại thức uống
CREATE PROC UPDATE_THUCUONG
	@MATU CHAR(5),
	@TENTU NVARCHAR(100),
	@DONGIA DECIMAL
	AS BEGIN
		IF EXISTS (SELECT*FROM THUCUONG WHERE THUCUONG.MATU=@MATU)
			UPDATE THUCUONG
			SET MATU=@MATU, TENTU=@TENTU, DONGIA=@DONGIA FROM THUCUONG
			WHERE MATU=@MATU
			ELSE
				PRINT N'Không có mã thức uống này'
		END
EXEC UPDATE_THUCUONG 'TU04',N'Nước ép đào',30000
SELECT*FROM THUCUONG
--6. Tính tổng tiền của hóa đơn có trong trong CHITTIET_THUCUONG

--7. Khi thêm 1 thức uống vào chittietthucuong sẽ cập nhật chitietthucuong
CREATE TRIGGER UPDATE_CHITIET_THUCUONG ON CHITIET_THUCUONG
AFTER INSERT,UPDATE 
AS
BEGIN
	UPDATE CHITIET_THUCUONG
	SET SOLUONG = (SELECT COUNT(*) FROM THUCUONG WHERE CHITIET_THUCUONG.MATU =THUCUONG.MATU)
	SET TONGGIA = (SELECT *FROM THUCUONG WHERE TONGGIA = DONGIA * SOLUONG)
END
DROP TRIGGER UPDATE_CHITIET_THUCUONG 
-----------------------
CREATE TRIGGER UPDATE_TEST ON CHITIET_THUCUONG
FOR UPDATE
AS BEGIN
	DECLARE @MATU CHAR(5);
	DECLARE @TENTU NVARCHAR(100);
	DECLARE @SOLUONG INT;
	DECLARE @TONGGIA DECIMAL;
	DECLARE @DONGIA DECIMAL;
	SELECT @DONGIA = THUCUONG.DONGIA FROM THUCUONG
		IF EXISTS (SELECT*FROM CHITIET_THUCUONG WHERE MATU = @MATU)
			UPDATE CHITIET_THUCUONG
			SET MATU=@MATU, TENTU=@TENTU, SOLUONG = @SOLUONG,
			TONGGIA=(SELECT COUNT(*) FROM THUCUONG WHERE THUCUONG.MATU=CHITIET_THUCUONG.MATU
			AND @TONGGIA = @SOLUONG*@DONGIA) FROM CHITIET_THUCUONG
			
		END

DROP TRIGGER UPDATE_TEST
UPDATE CHITIET_THUCUONG
SET SOLUONG = 2
WHERE MATU = 'TU01'
INSERT INTO CHITIET_THUCUONG VALUES ('TU01',N'Sữa nóng',1,35000)

SELECT*FROM CHITIET_THUCUONG
SELECT*FROM THUCUONG
--------------------*****************************************--------------------

--4. Giảm 10% giá các thức uống không bán được trong tháng 02-2022
UPDATE THUCUONG SET DONGIA = DONGIA - DONGIA*0.1
WHERE MATU NOT IN ( SELECT THUCUONG.MATU
				FROM HOADON INNER JOIN CHITIET_HOADON ON HOADON.MAHD = CHITIET_HOADON.MAHD
				INNER JOIN THUCUONG ON CHITIET_HOADON.MATU = THUCUONG.MATU
				WHERE MONTH(HOADON.NGAYLAP) = 2 AND YEAR(HOADON.NGAYLAP) = 2019)

SELECT * FROM THUCUONG

--5. Tăng thêm 20% giá các thức uống bán chạy nhất
UPDATE THUCUONG SET DONGIA = DONGIA + DONGIA * 0.2
WHERE TENTU IN( SELECT THUCUONG.TENTU
			FROM HOADON INNER JOIN CHITIET_HOADON ON HOADON.MAHD = CHITIET_HOADON.MAHD INNER JOIN
				THUCUONG ON CHITIET_HOADON.MATU = THUCUONG.MATU
			GROUP BY THUCUONG.TENTU, THUCUONG.DONGIA
			HAVING (SUM(CHITIET_HOADON.SOLUONG) = (SELECT TOP 1 SUM(CHITIET_HOADON.SOLUONG) AS SOLUONG
			FROM THUCUONG INNER JOIN 
				CHITIET_HOADON ON THUCUONG.MATU =  CHITIET_HOADON.MATU INNER JOIN 
				HOADON  ON CHITIET_HOADON.MAHD = HOADON.MAHD
			GROUP BY THUCUONG.TENTU, THUCUONG.DONGIA
			ORDER BY SUM(CHITIET_HOADON.SOLUONG) DESC)))

SELECT* FROM THUCUONG

--6. Viết câu lệnh sửa THUCUONG: TENTU Nước dừa thành Sinh tố dừa
UPDATE THUCUONG SET TENTU = N'Sinh tố dừa'
WHERE MATU = 'TU06'

SELECT*FROM THUCUONG

--7. Câu lệnh xóa báo cáo của một nhân viên với MANV = NV10 vào ngày 30-12-2019
DELETE FROM BAOCAO
WHERE NGAYLAP = '30-12-2019' AND MANV = 'NV10'

SELECT*FROM BAOCAO

--9. Lọc ra danh sách các TENTU, DONGIA thức uống có loại là Tea.
SELECT THUCUONG.TENTU AS N'Thức uống', THUCUONG.DONGIA AS N'Đơn Giá',LOAITHUCUONG.TENLOAI AS N'Loại'
FROM THUCUONG INNER JOIN LOAITHUCUONG ON THUCUONG.MALOAI = LOAITHUCUONG.MALOAI
WHERE (LOAITHUCUONG.TENLOAI = 'Tea')

--10. Liệt kê ra tên thức uống, đơn giá những thức uống dưới 35000.
SELECT TENTU AS N'Thức uống', DONGIA AS N'Đơn giá'
FROM THUCUONG
WHERE (DONGIA < 35000)

--13. Liệt kê những thức uống bán nhiều nhất
SELECT THUCUONG.TENTU, THUCUONG.DONGIA, SUM(CHITIET_HOADON.SOLUONG) AS N'Số lượng bán'
FROM HOADON INNER JOIN CHITIET_HOADON ON HOADON.MAHD = CHITIET_HOADON.MAHD
			INNER JOIN THUCUONG ON CHITIET_HOADON.MATU	= THUCUONG.MATU
GROUP BY THUCUONG.TENTU, THUCUONG.DONGIA
HAVING (SUM(CHITIET_HOADON.SOLUONG) = (SELECT TOP 1 SUM(CHITIET_HOADON.SOLUONG) AS SOLUONG
	FROM THUCUONG  INNER JOIN CHITIET_HOADON ON THUCUONG.MATU = CHITIET_HOADON.MATU
					INNER JOIN HOADON ON CHITIET_HOADON.MAHD = HOADON.MAHD
		GROUP BY THUCUONG.TENTU, THUCUONG.DONGIA
		ORDER BY SUM(CHITIET_HOADON.SOLUONG) DESC))

--14. Tính tổng doanh thu toàn hệ thống năm 2020
SELECT YEAR(NGAYLAP) AS 'Năm', SUM(TONGTIEN) + (SELECT SUM(SOTIEN) FROM PHIEUPHUTHU
WHERE (YEAR(NGAYLAP) = 2020)) AS N'Tổng tiền'
FROM HOADON
GROUP BY YEAR(NGAYLAP)
HAVING (YEAR(NGAYLAP) = 2020)


--------------TRIGGER----------------
----CAU 3. Khi sửa lượng thức uống thì CHITIET_HOADON thì phải sửa SOLUONG tồn lại của NGUYENLIEU
CREATE TRIGGER UPDATE_CHITIET_HOADON ON CHITIET_HOADON
FOR UPDATE
AS
DECLARE @SL FLOAT
DECLARE @SL_TRUOCKHISUA FLOAT
DECLARE @MATU CHAR(5)
SELECT @SL = INSERTED.SOLUONG, @MATU = INSERTED.MATU FROM INSERTED
SELECT @SL_TRUOCKHISUA = DELETED.SOLUONG FROM DELETED
IF(@SL <= 0)
	BEGIN
		PRINT N'Lỗi: Không được phép nhập số lượng âm'
		ROLLBACK TRAN
		RETURN
	END
	--Ngược lại
	ELSE IF(@SL_TRUOCKHISUA > @SL)
	UPDATE NGUYENLIEU SET NGUYENLIEU.SOLUONG = (@SL_TRUOCKHISUA-@SL)*CHITIET_CONGTHUC.SOLUONG
	+NGUYENLIEU.SOLUONG FROM THUCUONG INNER JOIN CHITIET_CONGTHUC ON THUCUONG.MATU = CHITIET_CONGTHUC.MATU INNER JOIN NGUYENLIEU ON
	CHITIET_CONGTHUC.MANL = NGUYENLIEU.MANL WHERE CHITIET_CONGTHUC.MATU = @MATU
	ELSE IF(@SL_TRUOCKHISUA < @SL)
	UPDATE NGUYENLIEU SET NGUYENLIEU.SOLUONG = NGUYENLIEU.SOLUONG - (@SL - @SL_TRUOCKHISUA)*
	CHITIET_CONGTHUC.SOLUONG FROM THUCUONG INNER JOIN CHITIET_CONGTHUC ON THUCUONG.MATU = CHITIET_CONGTHUC.MATU INNER JOIN NGUYENLIEU ON CHITIET_CONGTHUC.MANL= NGUYENLIEU.MANL
	WHERE CHITIET_CONGTHUC.MATU = @MATU
	ELSE 
		PRINT N'Cảnh báo: Sô trước khi sửa và sau khi sửa giống nhau'
		ROLLBACK TRAN
		RETURN


--CÂU 1. Khi thêm nhân viên bắt buộc phải nhập trên 18 tuổi
CREATE TRIGGER KT_TUOI_UPDATE ON NHANVIEN
FOR UPDATE
AS BEGIN
	DECLARE @MANV CHAR(5);
	DECLARE @TENNV NVARCHAR(100);
	DECLARE @NGAYSINH DATETIME;
	DECLARE @GT NCHAR(5);
	DECLARE @DIACHI NVARCHAR(100);
	DECLARE @SODT NVARCHAR(50);
	DECLARE @NGAYVAO DATETIME;
	DECLARE @EMAIL NVARCHAR(50);

	SELECT*FROM NHANVIEN
	SELECT @MANV=MANV FROM INSERTED;
	SELECT @TENNV=TENNV FROM INSERTED;
	SELECT @NGAYSINH = NGAYSINH FROM INSERTED;
	SELECT @GT=GIOITINH FROM INSERTED;
	SELECT @DIACHI=DIACHI FROM INSERTED;
	SELECT @SODT=SODT FROM INSERTED;
	SELECT @NGAYVAO=NGAYVAO FROM INSERTED;
	SELECT @EMAIL=EMAIL FROM INSERTED;
	IF EXISTS (SELECT*FROM INSERTED WHERE (YEAR(GETDATE())-YEAR(INSERTED.NGAYSINH))<=18)
	BEGIN 
		PRINT N'Chưa đủ 18 tuổi'
		Rollback Tran
	End
End


INSERT INTO NHANVIEN
VALUES
		('NV20',N'Trần Thị Hảo','09-10-2007',N'Nữ',N'Bình Thuận','0398274643','10-02-2021','thihaotran@gmail.com')
--Câu 2.Ràng buộc khi nhập SDT buộc phải đúng 10 chữ số và bắt đầu là số 0
CREATE TRIGGER KT_SDT ON NHANVIEN
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT*FROM INSERTED WHERE SODT NOT LIKE '[0][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
BEGIN
RAISERROR(N'Số điện thoại bao gồm 10 chữ số bắt đầu bằng số 0',16, 1);
Rollback
End

select * from NHANVIEN
INSERT INTO NHANVIEN
VALUES
		('NV25',N'Nguyễn Dương','11-07-2001',N'Nam',N'Hà Nội','115','10-02-2022','duongnguyen@gmail.com')


--3. 
select*from HOADON


---------------------------PROCEDURE
--1. Tạo ràng buộc khi thêm nhân viên ngày vào làm phải lớn hơn ngày sinh
CREATE PROCEDURE THEM_NHANVIEN
	@MANV CHAR(5),
	@TENNV NVARCHAR(100),
	@NGAYSINH DATETIME,
	@GT NCHAR(5),
	@DIACHI NVARCHAR(100),
	@SODT NVARCHAR(50),
	@NGAYVAO DATETIME,
	@EMAIL NVARCHAR(50)
	AS BEGIN
		IF EXISTS(@NGAYVAO > @NGAYSINH)
		INSERT INTO NHANVIEN VALUES 
		(@MANV,@TENNV,@NGAYSINH,@GT,@DIACHI,@SODT,@NGAYVAO,@EMAIL)
		ELSE
			PRINT N'Ngày vào làm phải lớn hơn ngày sinh '
		END
	END



--3. Nhập vào tỉnh thành đếm số lượng Nhân viên có địa chỉ ở tỉnh thành đó.
CREATE PROCEDURE PROC_DEMNV_DC
	@DIACHI NVARCHAR(100)
	AS
		DECLARE @DEM INT
		SELECT @DEM = COUNT(*) FROM NHANVIEN
		WHERE DIACHI LIKE '%'+ @DIACHI
	RETURN @DEM
GO


DECLARE @TONGSO INT 
EXEC @TONGSO = PROC_DEMNV_DC N'Vũng Tàu' SELECT @TONGSO 
GO
SELECT*FROM NHANVIEN

--5. 
SELECT*FROM THUCUONG
SELECT*FROM HOADON
SELECT*FROM CHITIET_HOADON


---------------------------FUNCTION
--1. Tạo hàm tính tuổi của Nhân viên
CREATE FUNCTION FUNC_TUOI(@NGAYSINH DATETIME)
RETURNS INT 
AS
BEGIN
	RETURN YEAR(GETDATE()) - YEAR(@NGAYSINH)
END

SELECT*FROM NHANVIEN
SELECT DBO.FUNC_TUOI(NGAYSINH) FROM NHANVIEN
--2. Kiểm tra năm sinh của Nhân viên có phải là năm nhuận hay không
CREATE FUNCTION FUNC_KTNAMNHUAN(@MANV CHAR(5))
RETURNS NVARCHAR(50)
AS BEGIN
	DECLARE @NAMSINH INT
	SELECT @NAMSINH = YEAR(NGAYSINH) FROM NHANVIEN WHERE MANV = @MANV
	IF(@NAMSINH%400 = 0)
		RETURN N'Năm sinh của nhân viên này là năm nhuận'
	ELSE IF(@NAMSINH%4=0 AND @NAMSINH%100!=0)
		RETURN N'Năm sinh của nhân viên này là năm nhuận'
	ELSE
		RETURN N'Năm sinh của nhân viên này không phải là năm nhuận'
	RETURN N'Null'
END

SELECT DBO.FUNC_KTNAMNHUAN(MANV) AS [KẾT QUẢ] FROM DBO.NHANVIEN
SELECT YEAR(NGAYSINH) FROM NHANVIEN

--3.Danh sách Họ tên và Địa chỉ của nhân viên
CREATE FUNCTION FUNC_TENNV_DIACHI_NV()
RETURNS TABLE
RETURN
SELECT TENNV,DIACHI
FROM NHANVIEN

SELECT*FROM DBO.FUNC_TENNV_DIACHI_NV()

--5. Nhập vào năm(YEAR) và kiểm tra xem có bao nhiêu đơn của năm đó có giá trên 100000
CREATE FUNCTION COUNT_DONHANG_TREN100K (@YEAR INT)
RETURNS INT 
AS
BEGIN
	DECLARE @COUNT INT = 0 
	SELECT @COUNT = COUNT(TONGTIEN) FROM (
	SELECT TONGTIEN
	FROM HOADON
	WHERE @YEAR = YEAR(NGAYLAP) AND TONGTIEN >= 300000
	GROUP BY TONGTIEN
	HAVING SUM(TONGTIEN) >= 300000)
	AS TEMP 
	RETURN @COUNT
END

DROP FUNCTION DBO.COUNT_DONHANG_TREN100K

SELECT DBO.COUNT_DONHANG_TREN100K('2022') AS N'Số đơn hàng'
SELECT*FROM HOADON
