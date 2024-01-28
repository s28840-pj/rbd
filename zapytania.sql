-- Lista firm, ktora ma chociaz jeden wlasny produkt, ile produktow ma kazda, od najwiekszej ilosci do najmniejszej
SELECT b.id, b.name, b.logo, b.website, COUNT(p.id) AS product_count
FROM brands b
LEFT JOIN products p ON b.id = p.brand
GROUP BY b.id
HAVING product_count > 0
ORDER BY product_count DESC;

-- Lista produktow razem z nazwa producenta
SELECT p.id, p.name AS product_name, b.name AS brand_name, b.logo AS brand_logo, p.calories, p.fat, p.carbs, p.protein
FROM products p
JOIN brands b ON p.brand = b.id;

-- Lista uzytkownikow i ile osob je obserwuje, od najmniejszej ilosci do najwiekszej
SELECT u.id, u.username, u.created_at, COUNT(f.follower) AS follower_count
FROM users u
LEFT JOIN followers f ON u.id = f.followee
GROUP BY u.id, u.username, u.created_at
ORDER BY follower_count ASC;

-- Lista uzytkownikow, ktore nie zapisala, ze spozyli jakis wlasny produkt
SELECT u.id, u.username
FROM users u
WHERE NOT EXISTS (
    SELECT 1
    FROM ingests i
    WHERE i.who = u.id AND i.is_custom = true
);

SELECT AVG(weight) AS average_weight
FROM users;

-- Lista uzytkownikow, ktorzy nie obserwuja nikogo
SELECT *
FROM users
WHERE id NOT IN (SELECT follower FROM followers);

SELECT *
FROM products
WHERE calories BETWEEN 100 AND 200;

SELECT *
FROM users
WHERE username LIKE 'J%';

SELECT id, username, MIN(weight) AS lowest_weight
FROM users;

SELECT DISTINCT u.id AS user_id,
                u.username,
                cp.name AS custom_product_name
FROM users u
JOIN ingests i ON u.id = i.who
INNER JOIN custom_products cp ON i.custom_product = cp.id;

TRUNCATE users CASCADE;
