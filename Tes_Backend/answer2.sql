-- Active: 1684955416692@@localhost@3306@finplan

-- FILTER RUNNING
SELECT 
u.gender,
COUNT(CASE gender WHEN gender='M' THEN 1 WHEN gender='F' THEN 1 END) AS 'total'
FROM users AS u
JOIN map_user_hobby AS m ON u.id = m.id_user
JOIN hobbies AS h ON m.id_hobby = h.id
WHERE h.name = 'Running'
AND m.status = 'active'
GROUP BY gender;


-- FILTER PUSH UP
SELECT 
u.gender,
COUNT(CASE gender WHEN gender='M' THEN 1 WHEN gender='F' THEN 1 END) AS 'total'
FROM users AS u
JOIN map_user_hobby AS m ON u.id = m.id_user
JOIN hobbies AS h ON m.id_hobby = h.id
WHERE h.name = 'Push Up'
AND m.status = 'active'
GROUP BY gender;

-- FILTER SKIPPING
SELECT 
u.gender,
COUNT(CASE gender WHEN gender='M' THEN 1 WHEN gender='F' THEN 1 END) AS 'total'
FROM users AS u
JOIN map_user_hobby AS m ON u.id = m.id_user
JOIN hobbies AS h ON m.id_hobby = h.id
WHERE h.name = 'Skipping'
AND m.status = 'active'
GROUP BY gender;

