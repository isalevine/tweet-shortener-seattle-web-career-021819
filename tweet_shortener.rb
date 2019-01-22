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
  dictionary_keys = dictionary_hash.keys
  tweet_array = tweet_string.split(" ")
  tweet_array.each_with_index do |tweet_word, index|
    if dictionary_keys.include?(tweet_word)
      new_word = dictionary[tweet_word]
      tweet_word = new_word
    end
  end
  tweet_array.join(" ")
end



def bulk_tweet_shortener(tweet_string)
  word_substituter(tweet_string)
end
