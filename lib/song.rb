require "pry"

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if !artist_hash[artist]
        artist_hash[artist] = 1
      elsif artist_hash[artist]
        artist_hash[artist]+=1
      end
    end
    artist_hash
  end

  def self.genre_count
    genres_num = {}
    @@genres.each do |genre|
      if !genres_num[genre]
        genres_num[genre] = 1
      elsif genres_num[genre]
        genres_num[genre]+=1
      end
    end
    genres_num
  end

  def self.artists
    @@artists.uniq
  end

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@genres << genre
    @@artists << artist
  end
end
