create table Users (
    user_id int primary key auto_increment,
    user_name varchar(100) not null,
    email varchar(150) unique,
    total_orders int default null, 
    created_at date
);
insert into Users ( user_name , email , total_orders , created_at ) 
value
('Bui Duy Hoang', 'hoang.bui@email.com', 550, '2026-01-15'),
('Nguyen Quang Hai', 'hai.nguyen@email.com', 1200, '2025-12-20'),

-- Nhóm 2: Khách hàng "Vàng" (Số đơn hàng từ 100 đến 500)
('Tran Thanh Tam', 'tam.tran@email.com', 250, '2026-02-10'),
('Pham Minh Duc', 'duc.pham@email.com', 100, '2026-03-05'),

-- Nhóm 3: Khách hàng "Bạc" (Số đơn hàng dưới 100)
('Le Thi Buoi', 'buoi.le@email.com', 45, '2026-04-01'),
('Dang Van Lam', 'lam.dang@email.com', 5, '2026-04-10'),

-- Nhóm 4: Khách hàng mới (Dữ liệu NULL - Bẫy dữ liệu)
('Hoang Thuy Linh', 'linh.hoang@email.com', NULL, '2026-04-19'),
('Vuong Anh Tu', 'tu.vuong@email.com', NULL, '2026-04-20');
select
    user_name as Ten_Khach_Hang,
    case 
        when total_orders is null then 'Bạc'
        when total_orders > 500 then 'Kim Cương'
        when total_orders >= 100 then 'Vàng'
        else 'Bạc'
    end as Xep_Hang
from Users;