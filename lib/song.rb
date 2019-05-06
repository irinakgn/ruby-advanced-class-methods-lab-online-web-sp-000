class Song
  attr_accessor :name, :artist_name
  @@all = []

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
    @@all.find{|person| person.name == name}
  end

end
