-- Bẫy toán tử OR ở yêu cầu 3
-- Yêu cầu: lấy đơn có note chứa "gấp" HOẶC user_id IS NULL.
-- SAI - OR phá vỡ toàn bộ điều kiện WHERE phía trên
WHERE status != 'CANCELLED'
  AND total_amount BETWEEN 2000000 AND 5000000
  OR note LIKE '%gấp%'
  OR user_id IS NULL
  
  
-- Chống bẫy Offset
IF page <= 0 OR page IS NULL:
    SET page = 1
OFFSET = (page - 1) * 20


--  tất cả 5 yêu cầu:
SELECT
    order_id,
    total_amount,
    status,
    note,
    user_id,
    CASE
        WHEN total_amount > 4000000 THEN 'Nguy hiểm'
        ELSE 'Bình thường'
    END AS Alert_Level
FROM Orders
WHERE status != 'CANCELLED'
  AND total_amount BETWEEN 2000000 AND 5000000
  AND (                                    -- dấu ngoặc chống bẫy OR
      note LIKE '%gấp%'
      OR user_id IS NULL
  )
ORDER BY total_amount DESC
LIMIT 20
OFFSET (:page - 1) * 20;   -- page đã được validate > 0 ở Backend