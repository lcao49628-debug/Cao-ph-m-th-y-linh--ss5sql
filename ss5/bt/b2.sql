-- 1. Phân tích lỗi
-- Nguyên nhân: Không có ORDER BY -> SQL Engine trả về 5 hàng theo thứ tự vật lý tùy ý. Mỗi lần refresh có thể ra kết quả khác nhau, không đảm bảo là 5 quán mới nhất. 
-- 2. Sửa Lỗi 
SELECT restaurant_name, created_at
FROM Restaurants
ORDER BY created_at DESC
LIMIT 5;