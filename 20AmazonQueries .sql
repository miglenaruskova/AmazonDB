-- 1. Name of all books written by Dav Pilkey.
SELECT "Name", "Author"
FROM "Amazon"
WHERE "Author" = 'Dav Pilkey'

-- 2. Books that received a rating  4 or 5, and sorted in increasing order in all years.
SELECT DISTINCT "Year"
FROM "Amazon"
WHERE "User Rating"  IN (4, 5)
ORDER BY "Year";

-- 3. Names of all books that have no ratings. 
SELECT "Name"
FROM "Amazon"
WHERE "User Rating" = 0 ;

-- 4. Highest number of user rating that books received. 
SELECT "Name", MAX("User Rating")
FROM "Amazon"
GROUP BY "Name","User Rating"
ORDER BY "Name";

-- 5. Name and the 'rating average' for each books.
SELECT "Name", AVG("User Rating") AS rating_avg
FROM "Amazon"
GROUP BY "Name"
ORDER BY rating_avg DESC;

-- 6. Find the author, reviews and year of 'The Magnolia Story'. 
SELECT DISTINCT "Author", "Year", "Reviews"
FROM "Amazon"
WHERE "Name" = 'The Magnolia Story';

-- 6. Find the author and year with price less than 9 and year greater than 2015. 
SELECT "Author", "Year"
FROM "Amazon"
WHERE "Price" >= 9 and "Year" <= '2015'
ORDER BY "Year" DESC;

-- 7. Name and the 'price average' for each books.
SELECT "Name", AVG("Price") AS price_avg
FROM "Amazon"
GROUP BY "Name"
ORDER BY price_avg DESC;

-- 8. The 'price average' for books.
SELECT AVG("Price") AS price_avg
FROM "Amazon"
ORDER BY price_avg DESC;

-- 9. Top 10 number of price that books received. 
SELECT "Name", MAX("Price") as Max_Price
FROM "Amazon"
GROUP BY "Name"
ORDER BY Max_Price DESC
LIMIT 10;

-- 10. Bottom 10 number of price that books received. 
SELECT "Name", MIN("Price") as Min_Price
FROM "Amazon"
GROUP BY "Name"
ORDER BY Min_Price ASC
LIMIT 10;

-- 11.Sum of price per Author. 
SELECT "Author", SUM("Price")
FROM "Amazon"
GROUP BY "Author"
ORDER BY SUM("Price") DESC;

-- 12.The books, authors and years which have a reviews less than 5000 and genre is Fiction.
SELECT DISTINCT  "Name", "Author", "Year"
FROM "Amazon"
WHERE "Reviews" <= 5000 AND "Genre" = 'Fiction'
order by "Reviews" DESC;

-- 13.The books, authors and years which have a reviews less than 5000 and genre is Non Fiction.
SELECT DISTINCT  "Name", "Author", "Year"
FROM "Amazon"
WHERE "Reviews" <= 5000 AND "Genre" = 'Non Fiction'
order by "Reviews" DESC;

-- 14.Count of books per Author. 
SELECT "Author", COUNT("Name")
FROM "Amazon"
GROUP BY "Author"
ORDER BY COUNT("Name") DESC;

-- 14.Count of books per Author. 
SELECT "Author", COUNT("Name")
FROM "Amazon"
GROUP BY "Author"
ORDER BY COUNT("Name") DESC;

-- 15.Checking the previous query for author with max books. 
SELECT "Name"
FROM "Amazon"
WHERE "Author"= 'Jeff Kinney'

-- 16.Authors who has less then 5 books. 
SELECT "Author", COUNT("Name")
FROM "Amazon"
GROUP BY "Author"
HAVING COUNT("Name")<5
ORDER BY COUNT("Name") DESC;

-- 17.Authors who has highest "User Rating" before 2015. 
SELECT "Author", MAX("User Rating")
FROM "Amazon"
WHERE "Year" >= '2015'
GROUP BY "Author"
ORDER BY MAX("User Rating") DESC;

-- 18.Number of User Rating with 4.9 reated. 
SELECT Count("User Rating")
FROM "Amazon"
WHERE "User Rating"= '4.9';

-- 19.Authors who has highest reviews. 
SELECT "Author", SUM("Reviews")
FROM "Amazon"
GROUP BY "Author"
ORDER BY SUM("Reviews") DESC;

-- 20.Fiction and Non Fiction per author.  

SELECT "Author",
	count(case when "Genre" = 'Fiction' Then 1 End) as Fiction_cnt,
	count(case when "Genre"= 'Non Fiction' Then 1 End) as NonFiction_cnt
from "Amazon"
group by "Author";








