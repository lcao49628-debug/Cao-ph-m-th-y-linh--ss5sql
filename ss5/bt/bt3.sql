-- 1. Phân tích bài toán (I/O)
-- INPUT: min_trust_score, restaurant_id
-- Kiểm tra đầu vào TRƯỚC KHI gọi SQL:
-- IF min_trust_score < 0
-- -> SET min_trust_score = 0 
-- -> Log cảnh báo Admin nhập sai
-- 	ELSE → tiếp tục bình thường
-- 2 thực hiện
SELECT
    driver_id,
    driver_name,
    trust_score,
    distance_km,
    status
FROM Drivers
WHERE status = 'AVAILABLE'
  AND trust_score >= :min_trust_score   -- đã được validate >= 0 ở Backend
ORDER BY
    distance_km ASC,
    trust_score DESC;