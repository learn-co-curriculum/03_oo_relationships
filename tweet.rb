class Tweet
  attr_reader :content, :user

  ALL = []
  # ALL = "Somethign else!!!" # WILL BLOW UP

  # @@all = []
  # @@all = "SOEMTHING WEIRD" #fine

  def self.all
    ALL
  end

  def initialize(content, user)
    @content = content
    @user    = user
    ALL << self
  end

  def username
    self.user.username
  end

  def reversed_content
    self.content.reverse
  end
end
