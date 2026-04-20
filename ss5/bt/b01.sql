-- Nguyên nhân:
-- Nguyên nhân: Trong SQL, AND có độ ưu tiên cao hơn OR.
 -- Nên kết quả: Quận 1 lấy tất cả (kể cả rating 2.0–3.0), chỉ Quận 3 mới bị lọc rating
-- khắc phục:
SELECT restaurant_name, address, rating
FROM Restaurants
WHERE (district = 'Quận 1' OR district = 'Quận 3')
  AND rating > 4.0;