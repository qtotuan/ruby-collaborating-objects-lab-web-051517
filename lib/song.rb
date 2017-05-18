class Song

  attr_accessor :artist, :genre, :name

  @@song = []

  def initialize(title)
    @name = title
    @artist
    @genre
  end

  def self.new_by_filename(filename)
    parsed = filename.split("-")
    artist = parsed[0].strip
    title = parsed[1].strip
    genre = parsed[2].strip

    song = Song.new(title)
    song.artist = Artist.find_or_create_by_name(artist)
    # binding.pry
    song.artist.add_song(song)
    song

  end

  # def self.artist=(artist_name)
  #   @artist = artist_name
  # end

  # def artist_name=(name)
  #   Artist.find_or_create_by_name(name)
  # end

end
