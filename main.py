import configparser
import pandas as pd
import tweepy

# read configs
config = configparser.ConfigParser()
config.read('config.ini')

api_key = config['twitter']['api_key']
api_key_secret = config['twitter']['api_key_secret']

access_token = config['twitter']['access_token']
access_token_secret = config['twitter']['access_token_secret']


# authentication
auth = tweepy.OAuthHandler(api_key, api_key_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)
# keyword search
keyword = '#houseforsale'
limit=300

tweets = tweepy.Cursor(api.search_tweets, q=keyword, count=100, tweet_mode='extended').items(limit)

# create DataFrame
columns = ['User', 'Tweet', 'Tweet_id', 'Created_At']
data = []

for tweet in tweets:
    data.append([tweet.user.screen_name, tweet.full_text, tweet.id_str, tweet.created_at])

df = pd.DataFrame(data, columns=columns)

# print(df)
df.to_csv('tweets_hashtag_houseforsale_3.csv')
