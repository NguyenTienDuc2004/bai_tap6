# bai_tap6
bài tập 6 k225480106081 Nguyễn Tiến Đức môn hệ quản trị cơ sở dữ liệu 
Yêu cầu bài tập: 
Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

DEADLINE: 23H59:59 NGÀY 25/4/2025 
# bài làm 
Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server. 
tạo database với tên là sv_tnut 
![1](https://github.com/user-attachments/assets/78085b15-13c2-4813-8c4f-8f1112926c2e) 
mở file sv_tnut đã tải trước đó 
![2](https://github.com/user-attachments/assets/93cb9263-9103-49e6-bd4e-368314470282)  
![3](https://github.com/user-attachments/assets/b9f4ab33-d549-4e58-b97e-3c215dde0fcc)  
![4](https://github.com/user-attachments/assets/0a4fe8b5-94f9-4c68-a199-0b434b136a06)  
mở file sv_tnut ta vin ra được danh sách các sinh viên  
![5](https://github.com/user-attachments/assets/a0cf0963-7066-410c-a07d-660bbf047738)  
nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em? 
so sánh trực tiếp kiểu date
![6](https://github.com/user-attachments/assets/b2673a74-eb98-4e08-b60b-65c5cb08b45f)  
nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?  
tách ngày và tháng bằng hàm DAY và MONTH  
![7](https://github.com/user-attachments/assets/3ca105b9-597d-472a-a5c7-d29bce7677b7)   
nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?  
so sánh riêng tháng và năm 
![8](https://github.com/user-attachments/assets/7ea887a0-6742-46d9-a2dd-650dcd40b835)  
nhập sql để tìm xem có những sv nào trùng tên với em?  
lấy phần cuối cùng trong họ tên( Đức)
![9](https://github.com/user-attachments/assets/5713a739-b1a5-43d3-9659-a8572d59975c)  
nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em  
lấy từ phần đầu đến trước tên( Nguyễn Tiến) 
![10](https://github.com/user-attachments/assets/7a13fd62-ded7-4f14-be62-ddda302a67c4)  
nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.  
so sánh từng chữ số giữa 2 sdt đến số ký tự khác bằng 1
![11](https://github.com/user-attachments/assets/ef73f96b-d7be-462d-be60-7f1229b58cff)  
LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT  
sắp xếp đúng tiếng việt : tên trước họ đệm sau 
![12](https://github.com/user-attachments/assets/3de5748b-03ee-481c-8c6b-db7dd8c210e3)  
LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV  
vì không có cột giới tính nên sẽ lọc theo ngành KMT và tên nên sẽ không thể chính xác 100%  
![13](https://github.com/user-attachments/assets/47a7b9bd-529f-46d7-bd68-6b6a07c20e29)

















