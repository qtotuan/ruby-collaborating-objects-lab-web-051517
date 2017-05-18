class MP3Importer
  attr_accessor :path, :artist
  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{@path}**/*.mp3"]
    files.collect! do |file_name|
      file_name = file_name.split("/").last
    end
    files
  end

  def import
    all_files = files
    all_files.each do |file|
      Song.new_by_filename(file)
    end
    # binding.pry
  end


end
