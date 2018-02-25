library(ROAuth)
library(twitteR)
library(RCurl)


consumer_key <- "fS4J3VxRcBMWmW5ld1mwVJGXJ"
  consumer_secret <-"pD81wd1BCp0XzNwhS8yn9umF0zdh24JtM283sFZgltnH9PXYDR" 
  access_token <- "3108469604-DBIJEBdkcTgV1BBYRDB2ZIP7xE0NzEGyu1sa1Ka"
  access_secret <- "CFPYr7hfwffzt6DiHuYAtIjhVLo258T5asQQSYeS5CQV1"
  
  download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem") #downloads the certificate

setup_twitter_oauth(consumer_key,consumer_secret,access_token,access_secret)

cred <- OAuthFactory$new(consumerKey=consumer_key, 
                         consumerSecret=consumer_secret,
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL='https://api.twitter.com/oauth/authorize')

cred$handshake(cainfo="cacert.pem")