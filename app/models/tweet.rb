class Tweet < ActiveRecord::Base


 #<Tweet:0x007ff2e4f82be8 id: 20, message: "this sandwhich is rubbish">,


    def self.determine_good

        goodwords = ['good', 'love', 'tight', 'awesome', 'sick', 'love', ':)', 'gr8', 'great', 'fantastic', 'yay']
        # check = Regexp.union(goodwords)
        goodTweets = []

        Tweet.all.each do |tweet|
            goodwords.each do |word|
                if tweet.message.include? (word)
                    goodTweets << tweet
                end
            end

        end
        goodTweets.uniq
    end

    def self.determine_bad

        badwords = ['bad', 'hate', 'sucks', 'suck', 'crappy', 'shitty', 'loathe', 'bummer', 'drag', 'dissappointed', 'terrible', 'whack', 'nasty', 'rubbish']
        badTweets = []

        Tweet.all.each do |tweet|
            badwords.each do |word|
                if tweet.message.include? (word)
                    badTweets << tweet
                end
            end
        end
        badTweets.uniq
    end

end
