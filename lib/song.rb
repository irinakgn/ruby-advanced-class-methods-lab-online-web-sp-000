class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    @@all << Song.new(name)
  end

  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end

end
