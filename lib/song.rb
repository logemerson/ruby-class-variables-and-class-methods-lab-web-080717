class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

#BEGIN METHODS
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

#BEGIN CLASS METHODS
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}

    @@genres.each do |genre|
      if genre_hash.has_key?(genre) == false
        genre_hash[genre] = 1
      else
        genre_hash[genre] +=1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}

    @@artists.each do |artist|
      if artist_hash.has_key?(artist) == false
        artist_hash[artist] = 1
      else
        artist_hash[artist] +=1
      end
    end
    artist_hash
  end

end
