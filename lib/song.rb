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
    tune = Song.new
    Song.all << tune
    tune
  end
  
  def self.new_by_name(name)
    tune = Song.new
    tune.name = name
    tune
  end
  
  def self.create_by_name(name)
    tune = Song.new
    tune.name = name
    Song.all << tune
    tune
  end
  
  def self.find_by_name(title)
    if Song.all.any? {|song| song.name == title}
      
    end
  end

end
