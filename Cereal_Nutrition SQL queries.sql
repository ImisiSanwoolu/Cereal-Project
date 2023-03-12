--SKIMMING THE DATA
SELECT *
FROM cereal_nutrition

--CHANGE INITIALS TO FULL DETAIL IN 'manufacturer' FIELD
UPDATE cereal_nutrition
SET manufacturer = 
	CASE
		WHEN manufacturer = 'A' THEN 'American Home Food Products'
		WHEN manufacturer = 'G' THEN 'General Mills'
		WHEN manufacturer = 'K' THEN 'Kelloggs'
    		WHEN manufacturer = 'N' THEN 'Nabisco'
		WHEN manufacturer = 'P' THEN 'Post'
		WHEN manufacturer = 'Q' THEN 'Quaker Oats'
		WHEN manufacturer = 'R' THEN 'Ralston Purina'
		ELSE manufacturer
END

--CHANGE INITIALS TO FULL DETAIL IN 'temp' FIELD
UPDATE cereal_nutrition
SET temp =
	CASE
		WHEN temp = 'C' THEN 'Cold'
		WHEN temp = 'H' THEN 'Hot'
		ELSE temp
END

--CHECK TOP 10 CEREALS WITH THE HIGHEST RATINGS
SELECT cereal, manufacturer, rating
FROM cereal_nutrition
ORDER BY Rating DESC LIMIT 10

--LIST OF TOP 5 RATED CEREALS FOR EACH MANUFACTURER
SELECT *
FROM(
	SELECT cereal, manufacturer, rating, ROW_NUMBER() OVER (PARTITION BY manufacturer
	ORDER BY rating DESC) cereal_rank
	FROM cereal_Nutrition) RANKS
WHERE cereal_rank <= 5
order by manufacturer

-- MANUFACTURER WITH THE HIGHEST AVERAGE CEREAL RATINGS
SELECT manufacturer, AVG(rating) avg_rating
FROM cereal_nutrition
GROUP BY manufacturer
ORDER BY avg_rating DESC

/*
With the data, to understand what factors may cause some cereals to be higher rated than others, trends and correlation
coefficients must first be identified before we can determine the causation as correlation doesn't necessarily mean causation
*/


-- TOP 10 CEREALS WITH THE MOST CALORIES
SELECT cereal, calories, rating
FROM cereal_nutrition
ORDER BY calories DESC LIMIT 10

-- TOP 10 CEREALS WITH THE MOST SUGARS
SELECT cereal, sugars, rating
FROM cereal_nutrition
ORDER BY calories DESC LIMIT 10

-- TOP 10 CEREALS WITH THE MOST FIBER
SELECT cereal, fiber, rating
FROM cereal_nutrition
ORDER BY calories DESC LIMIT 10

-- TOP 10 CEREALS WITH THE MOST FAT
SELECT cereal, fat, rating
FROM cereal_nutrition
ORDER BY calories DESC LIMIT 10


/*
Results show that cereals with highest calories and sugar had relatively low ratings but we must confirm whether 
this trend is present in the whole dataset
*/

-- CORRELATION BETWEEN KEY NUTRIENTS AND CEREAL RATINGS
SELECT corr(calories, rating)
FROM cereal_nutrition

SELECT corr(sugars, rating)
FROM cereal_nutrition

SELECT corr(fiber, rating)
FROM cereal_nutrition

SELECT corr(fat, rating)
FROM cereal_nutrition


-- CEREAL BY SHELF
SELECT *
FROM cereal_nutrition
WHERE Shelf=1

SELECT *
FROM cereal_nutrition
WHERE Shelf=2

SELECT *
FROM cereal_nutrition
WHERE Shelf=3


