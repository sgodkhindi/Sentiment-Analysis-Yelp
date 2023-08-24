# Sentiment Analysis of Yelp Reviews

Yelp is a popular platform for user reviews for various brands, especially for restaurants and hotels. This application gathers the reviews for a specific brand in a specific City and by applying Natural Language Processing algorithm, provides Sentiment Analysis graphically.

### Data Sources

The main data source for this Sentiment Analysis program are Yelp APIs. There are 2 APIs that we are accessing here:
- Yelp Businesses API
- Yelp Reviews API


### High-level Approach
1. Prompt for the City where the Yelp reviews need to be pulled for. For example, Atlanta.
2. Prompt for the Brand Name for which the reviews need to be analyzed. For example, Mcdonalds.
3. Using the Yelp Business API, extract the location details of the brand in that city. For example, all Mcdonalds in Atlanta.
4. Then using the Yelp Reviews API, extract all the reviews for each of the locations extracted in Step 3.
5. Using Huggingface and other NLP libraries, perform Sentiment Analysis on the review text.
6. Present a graph of the top ranking Sentiments.




## Step 1 - Input Brand & City and Extract Brand Locations
- Prompt and get City and Brand to be analyzed
- Use Yelp Business API to extract all brand locations in the city
- Add these to a Panda Dataframe


## Step 2 - Extract Reviews 
- Use Yelp Review API to extract and display Star Rating and Review Text of the brand locations
- Add these to a Panda Dataframe


## Step 3 - Analyze Review Text and Assign Sentiment Score
- SentimentIntensistyAnalyzer function from the NTLK libraries is used assign a score based on the verbiage of the Review text.
- Depending on if the Score is > 0, Equal to 0 or < 0, we determine the Score Category as Positive, Neutral or Negative.
- The Score and the Score Category are added as columns to the dataframe.


## Step 4 - Analyze Review Text Using BERT Model
- Using the Cardiff NLP model analyze the Review text and assign a Positive, Negative and Neutral score to it. 
- This is BERT (Bidirectional Encoder Representations from Transformers) and is trained on over 50M Tweets



## Step 5 - Find Underlying Emotion beneath the Review
- Using another BERT Model arpanghoshal/EmoRoBERTa to get the emotion/sentiment in the Review text.
- This model has been trained using Reddit comments
- It helps identify emotions such as - admiration, amusement, disapproval, disgust, relief etc. and even a Neutral emotion.
- This emotion is added as another column to the dataframe



## Step 6 - Filter Out Neutral Reviews
- To ensure that we don't clutter the Sentiment Analysis with a bunch of Neutral Reviews, we filter those out.


## Step 7 - Plot Graph of Sentiments
- Plot a bar chart showing the Sentiments by Review Count
- The bar chart is sorted in the descending order of Number of Reviews
- The Sentiment with the highest number of Reviews is on the top.
- We can also generate a pie chart showing the distribution of the emotions across the reviews 


### Bar Chart

![Sentiment_Analysis_Yelp_Bar_Chart](/images/Sentiment_Analysis_Yelp_Bar_Chart.png)

### Pie Chart
![Sentiment_Analysis_Yelp_Pie_Chart](/images/Sentiment_Analysis_Yelp_Pie_Chart.png)
