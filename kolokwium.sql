SELECT username, email
FROM users u
INNER JOIN accounts USING (id);

SELECT username, SUM(calories)
FROM burns b
INNER JOIN users u ON u.id = b.who;


WITH min_date AS (SELECT current_date - 30)
SELECT
    u.username,
    a.email,
    SUM(b.calories) AS spalona_suma_z_miesiaca,
    AVG(i.calories) AS zjedzona_srednia_z_miesiaca
FROM
    users u
    INNER JOIN accounts a USING (id)
    LEFT JOIN burns b ON b.who = u.id
    LEFT JOIN ingests i ON i.who = u.id
WHERE
    b.created_at >= min_date AND
    i.created_at >= min_date
GROUP BY u.id
ORDER BY spalona_suma_z_miesiaca DESC;
