class User
  attr_reader :username

  ALL = []

  def self.all
    ALL
  end

  def initialize(username)
    @username = username
    ALL << self
  end

  def tweets
    # iterate over all of the tweets and
    # return an array of only the ones that match for this user
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def post_tweet(content)
    # content #=> 'great # coffee'
    Tweet.new(content, self)
  end
end
