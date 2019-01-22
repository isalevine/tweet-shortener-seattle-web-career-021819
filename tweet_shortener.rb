def dictionary
  substitutions = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end



def word_substituter(tweet_string)
  dictionary_hash = dictionary
  tweet_array = tweet_string.split(" ")
  tweet_array.each_with_index do |tweet_word, index|
    if dictionary_hash.keys.upcase.include?(tweet_word.upcase)
      tweet_array[index] = dictionary[tweet_word]
    end
  end
  tweet_array.join(" ")
end



def bulk_tweet_shortener(all_tweets_array)
  tweet_output = ""
  all_tweets_array.each do |tweet_string|
    tweet_output = word_substituter(tweet_string)
    puts tweet_output
  end
end
