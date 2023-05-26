-- Active: 1684955416692@@localhost@3306@finplan
SELECT 
u.name,
AVG(ALL h.level) AS 'level_avg'
FROM users AS u
JOIN map_user_hobby AS m ON u.id = m.id_user
JOIN hobbies AS h ON m.id_hobby = h.id
WHERE m.status = 'active'
GROUP BY name;
