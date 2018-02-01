class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes


  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    self.genre.name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist.name
  end

  def note_contents=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def note_contents
  # it should look among Note class for all the Note.content where Note.song_id equals Song.id
  contents = []
  Note.content.all.where(Note.song_id = self.id)
  end
end
