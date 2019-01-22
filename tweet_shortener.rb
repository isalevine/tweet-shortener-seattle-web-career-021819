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



def word_substituter(all_tweet_array)
  dictionary_hash = dictionary
  all_tweet_array.each do |tweet_string|
    tweet_array = tweet_string.split(" ")
    tweet_array.each_with_index do |tweet_word, index|
      if dictionary_hash.keys.include?(tweet_word)
        tweet_array[index] = dictionary[tweet_word]
      end
    end
    tweet_array.join(" ")
  end
end



def bulk_tweet_shortener(tweet_string)
  word_substituter(tweet_string)
end
