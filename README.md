
# Cereal Analysis

This is my first published SQL project. I’m not quite interested in the food industry but I thought it would be interesting to see whether people preferred my favourite cereals.

## Dataset Background
  I found this dataset on Kaggle, performed data cleaning and queried with PostgreSQL. This is the data from a supermarket that of course has cereals as one of their products available for sale. This dataset contains a population of 77 unique cereals from 7 various manufacturers. It contains the nutritional information of each cereal ranging from calories, protein, fats, vitamins to other nutrients. It also contains the average ratings of each cereal.


## Objectives and Questions
  A scenario where the supermarket is looking to slightly expand its operations and make more units of products available for sale. The task is to look for which products, in this case, cereals to increase the total units purchased for resale. 

1.Identify the highest rated cereals
2.Identify the top rated cereals of each manufacturer
3.Identify the manufacturer with the highest average cereal rating

There can be the possibility of patronizing new manufacturers and adding new cereals to the product range for resale which gives the need for further data exploration
1.What are the factors that cause a cereal to be higher rated than others? Identify trends among the cereals with the lowest ratings to see whether some cereals can be scrapped from the product range altogether in favour of new products that satisfy consumers’ needs better.
2.Identify whether shelf placement affects the ratings of the products.


## Observations
1.Nabisco cereals are highly rated among consumers. Although, there are only 6 different cereals by Nabisco, 5 of them feature in the top 10 highest rated cereals.
2.Calories and sugars had relatively high negative correlation with the cereal ratings meaning that the higher calories or sugars in the cereal, the lower the ratings of the cereals.
3.There is no trend between shelf placement of cereals and the ratings of the cereals.


## Recommendations
  The total units of Kelloggs’ All-Bran cereal, with a 93% rating along with current Nabisco cereals purchased for resale should be increased. More analysis should be done on the effect of cereal nutrients on customers’ cereal preference but if constrained by time, cereals with less calories and sugars can be added to current range as they are more likely to satisfy customers’ needs.


## Further analysis to be done
1.Analyze Sales data on cereals to identify the products with the highest units sold
2.Analyze Purchase Data to view trends in the length of time between restocks of all products both cereals above or below the average ratings.
	
   Cereal sales data can also be obtained from other branches of the chain store for better decision making and quick customer surveys may also be useful to help identify cereals they prefer, whether cereal nutritional information plays a major role in their choice of cereal and new cereals they want to be added to our product range.
