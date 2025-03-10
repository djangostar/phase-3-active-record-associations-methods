class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.count
  end

  def artist_count
    # return the number of artists associated with the genre
    Artist.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.artists.map do |artist|
      artist.name
    end
  end
end
