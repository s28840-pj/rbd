INSERT INTO brands (name, logo, website) VALUES
    ('Kellogg''s', 'kelloggs_logo.png', 'https://www.kelloggs.com'),
    ('Coca-Cola', 'cocacola_logo.png', 'https://www.coca-cola.com'),
    ('PepsiCo', 'pepsi_logo.png', 'https://www.pepsico.com'),
    ('Nestlé', 'nestle_logo.png', 'https://www.nestle.com'),
    ('Starbucks', 'starbucks_logo.png', 'https://www.starbucks.com'),
    ('McDonald''s', 'mcdonalds_logo.png', 'https://www.mcdonalds.com'),
    ('Hershey''s', 'hersheys_logo.png', 'https://www.hersheys.com'),
    ('General Mills', 'generalmills_logo.png', 'https://www.generalmills.com'),
    ('Kraft Heinz', 'kraftheinz_logo.png', 'https://www.kraftheinz.com'),
    ('Papa John''s', 'papajohns_logo.png', 'https://www.papajohns.com');

INSERT INTO products (name, brand, calories, fat, carbs, protein) VALUES
    ('Frosted Flakes', 1, 110, 0, 26, 1),
    ('Coca-Cola Classic', 2, 140, 0, 39, 0),
    ('Pepsi Max', 3, 0, 0, 0, 0),
    ('KitKat', 4, 210, 11, 27, 3),
    ('Caramel Macchiato', 5, 250, 10, 35, 5),
    ('Big Mac', 6, 540, 28, 46, 24),
    ('Hershey''s Chocolate Bar', 7, 210, 13, 25, 3),
    ('Sprite', 2, 140, 0, 38, 0),
    ('Lucky Charms', 8, 110, 1, 25, 2),
    ('Kraft Mac & Cheese', 9, 360, 10, 57, 7);

INSERT INTO users (username, height, weight) VALUES
    ('JohnDoe', 175, 750),
    ('JaneSmith', 160, 600),
    ('DavidBrown', 182, 800),
    ('SarahWilliams', 165, 700),
    ('MichaelJohnson', 178, 820),
    ('EmilyWilson', 172, 720),
    ('RobertLee', 185, 900),
    ('LindaMartin', 157, 650),
    ('WilliamHall', 171, 710),
    ('KarenAdams', 168, 730);

INSERT INTO accounts (id, email, password) VALUES
    --  realjohndoe
    (1, 'john.doe@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$6uaLYnhJ02IWVU7r3WP/dA'),
    -- 2020doglover13
    (2, 'jane.smith@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$EQ+Oyf+sCoJXPSQI1FotqA'),
    -- jeflfdkl2902903394
    (3, 'david.brown@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$PDSx2Tb6YrmwxPAvp7ZocQ'),
    -- jkhbHKJKHjHKJkhjhbjkHKbjH
    (4, 'sarah.williams@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$x3dQU79SALCieGh8IWBJVQ'),
    -- cave-johnson-son
    (5, 'michael.johnson@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$p6mBEp6oNrRYxOv9Kr+DmQ'),
    -- 1234567898765432
    (6, 'emily.wilson@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$3UfHpmQr0SIMzYR6+ITgxw'),
    -- OnGodFrFr420
    (7, 'robert.lee@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$4Ms7aj+m6hWCid5NtPYt2w'),
    -- mArin050896
    (8, 'linda.martin@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$PNw0sQeTZqD1VPZQoHa3Gw'),
    -- 3will.i.am3
    (9, 'william.hall@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$bi6qPeCulK5QcwU08xq3hQ'),
    -- ka-RE-mADAMS
    (10, 'karen.adams@example.com', '$argon2id$v=19$m=16,t=2,p=1$MDBzYWx0eTAw$/hL9NBo5ErDjYj7ifYQl0g');


INSERT INTO followers (follower, followee) VALUES
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (5, 6),
    (6, 7),
    (7, 8),
    (8, 9),
    (9, 10),
    (10, 1);

INSERT INTO custom_products (name, brand, owner, calories, fat, carbs, protein) VALUES
    ('Homemade Smoothie', 'Self-made', 2, 120, 2, 25, 4),
    ('Protein Bar', 'Self-made', 4, 200, 10, 15, 15),
    ('Organic Granola', 'Self-made', 5, 180, 6, 30, 5),
    ('Avocado Toast', 'Self-made', 7, 220, 10, 30, 8),
    ('Custom Salad', 'Self-made', 8, 150, 5, 20, 10),
    ('Energy Drink', 'Self-made', 9, 100, 0, 25, 1),
    ('Morning Coffee', 'Self-made', 10, 5, 0.5, 0.5, 1),
    ('Homemade Protein Shake', 'Self-made', 3, 220, 6, 30, 20),
    ('Homemade Oatmeal', 'Self-made', 6, 180, 3, 30, 5),
    ('Custom Sandwich', 'Self-made', 1, 300, 15, 35, 10);

INSERT INTO activities (name, category) VALUES
    ('Running', 'Cardio'),
    ('Yoga', 'Fitness'),
    ('Cycling', 'Cardio'),
    ('Weightlifting', 'Fitness'),
    ('Swimming', 'Cardio'),
    ('Hiking', 'Outdoor'),
    ('Pilates', 'Fitness'),
    ('Basketball', 'Sports'),
    ('Meditation', 'Mindfulness'),
    ('Dancing', 'Fitness');

INSERT INTO custom_activities (name, category, owner) VALUES
    ('Home Workout', 'Fitness', 2),
    ('Morning Yoga', 'Fitness', 4),
    ('Bike Ride', 'Cardio', 5),
    ('Strength Training', 'Fitness', 7),
    ('Swim Session', 'Cardio', 8),
    ('Hiking Adventure', 'Outdoor', 10),
    ('Pilates at Home', 'Fitness', 1),
    ('Basketball Practice', 'Sports', 3),
    ('Meditation Session', 'Mindfulness', 6),
    ('Dance Class', 'Fitness', 9);

INSERT INTO burns (calories, who, is_custom, activity) VALUES
    (250, 1, false, 1),
    (150, 2, false, 2),
    (300, 3, false, 3),
    (400, 4, false, 4),
    (200, 5, false, 5),
    (350, 6, false, 6),
    (220, 7, false, 7),
    (180, 8, false, 8),
    (280, 9, false, 9),
    (240, 10, false, 10);
