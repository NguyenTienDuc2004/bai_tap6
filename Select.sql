-- ========================================
-- SCRIPT TRUY VẤN THÔNG TIN SINH VIÊN
-- TÁC GIẢ: Nguyễn Tiến Đức
-- NGÀY SINH: 13/03/2004
-- SĐT: 0368700133
-- ========================================

-- 1. Sinh viên trùng ngày/tháng/năm sinh
SELECT * FROM SV
WHERE ns = '2004-03-13';

-- 2. Sinh viên trùng ngày và tháng sinh
SELECT * FROM SV
WHERE DAY(ns) = 13 AND MONTH(ns) = 3;

-- 3. Sinh viên trùng tháng và năm sinh
SELECT * FROM SV
WHERE MONTH(ns) = 3 AND YEAR(ns) = 2004;

-- 4. Sinh viên trùng tên 'Đức'
SELECT * FROM SV
WHERE ten = N'Đức';

-- 5. Sinh viên trùng họ và tên đệm 'Nguyễn Tiến'
SELECT * FROM SV
WHERE hodem = N'Nguyễn Tiến';

-- 6. Sinh viên có số điện thoại sai khác đúng 1 số so với '0368700133'
SELECT * FROM SV
WHERE LEN(sdt) = 10 AND (
    SELECT COUNT(*)
    FROM (
        SELECT number, 
            CASE 
                WHEN SUBSTRING(sdt, number, 1) != SUBSTRING('0368700133', number, 1) 
                THEN 1 ELSE NULL 
            END AS Diff
        FROM master..spt_values
        WHERE type = 'P' AND number BETWEEN 1 AND 10
    ) AS Differences
    WHERE Diff IS NOT NULL
) = 1;

-- 7. Liệt kê tất cả sinh viên ngành KMT, sắp xếp theo tên và họ đệm
SELECT * FROM SV
WHERE lop LIKE '%KMT%'
ORDER BY 
    ten COLLATE Vietnamese_CI_AS,
    hodem COLLATE Vietnamese_CI_AS;

-- 8. Sinh viên nữ ngành KMT (dựa vào tên nữ phổ biến)
SELECT * FROM SV
WHERE lop LIKE '%KMT%'
AND ten IN (
    N'Lan', N'Hoa', N'Mai', N'Hương', N'Trang', N'Ngọc', N'Hạnh',
    N'Thảo', N'Thùy', N'Diệp', N'Nhung', N'Mỹ', N'Yến', N'Loan'
);

