-- Bảng so sánh:
-- IN thắng hoàn toàn về độ rõ ràng và dễ bảo trì — tên cột chỉ viết một lần, thêm/bớt giá trị chỉ cần chỉnh trong list.
-- OR chỉ hợp lý khi so sánh các cột khác nhau, còn cùng một cột thì không có lý do gì để dùng.
-- Hiệu năng: hai cách hoàn toàn ngang nhau.
-- Xử lý bẫy – mảng rỗng:
-- IF danh_sách_lý_do IS EMPTY:
--     KHÔNG gọi SQL
--     Trả về [] (mảng rỗng) ngay tại Backend
--    	 Lý do: IN () là Syntax Error trong SQL
-- ELSE:
--     Gọi SQL với IN (...)
-- Giải pháp tối ưu – dùng IN:
SELECT *
FROM Orders
WHERE failure_reason IN ('KHACH_HUY', 'QUAN_DONG_CUA', 'KHONG_CO_TAI_XE', 'BOM_HANG');