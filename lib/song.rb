class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    # self in the initialize method is our new instance
    # self.class is Person
    # self.class.all == Person.all
    self.class.all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    @@all << Song.new
  end

  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end

end
