class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

private

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    self.genre.name
  end
end
