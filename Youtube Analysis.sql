CREATE DATABASE Youtube;
-- Retrieve all data:
SELECT * FROM youtubetable;

-- Count the number of channels:
SELECT COUNT(*) AS total_channels FROM youtubetable;

-- Find the top 5 channels with the most subscribers:
SELECT * FROM youtubetable
ORDER BY `Subscribers (millions)` DESC
LIMIT 5;

-- Get the number of channels by country:
SELECT Country, COUNT(*) AS channel_count
FROM youtubetable
GROUP BY Country
ORDER BY channel_count DESC;

-- Find channels with more than 100 million subscribers:
SELECT * FROM youtubetable
WHERE `Subscribers (millions)` > 100;

-- Get the average number of subscribers for channels in each category:

SELECT Category, AVG(`Subscribers (millions)`) AS avg_subscribers
FROM youtubetable
GROUP BY Category;

-- List channels that are brand channels:
SELECT * FROM youtubetable
WHERE `Brand_channel` = 'Yes';

-- Find the top 3 most popular channels by primary language:
SELECT Primary_language, MAX(`Subscribers (millions)`) AS max_subscribers
FROM youtubetable
GROUP BY Primary_language
ORDER BY max_subscribers DESC
LIMIT 3;

-- Get channels categorized under 'Entertainment':
SELECT * FROM youtubetable
WHERE Category = 'Entertainment';

-- Find the total number of subscribers for channels in each country:
SELECT Country, SUM(`Subscribers (millions)`) AS total_subscribers
FROM youtubetable
GROUP BY Country
ORDER BY total_subscribers DESC;
