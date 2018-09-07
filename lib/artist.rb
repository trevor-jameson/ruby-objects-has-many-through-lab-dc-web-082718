class Artist

  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, song_genre)
    Song.new(song_name, self, song_genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
     self.songs.collect {|song| song.genre}
  end

end
