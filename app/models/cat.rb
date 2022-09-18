class Cat < Parse::Object
  belongs_to :creator, as: :user, required: true
  belongs_to :main_protector, as: :user
  property :chip_serial
  property :main_name, required: true
  property :main_picture, :file
  property :tags, :array
  property :base_location, :geopoint
  property :date_of_birth, :date
  property :date_of_death, :date

  delegate :longitude, :latitude, to: :base_location

  def set_picture_from_io(picture_io)
    file_extension = File.extname(picture_io.original_filename)
    parse_file = Parse::File.new("main_picture#{file_extension}", picture_io.read)
    parse_file.mime_type = picture_io.content_type
    parse_file.save
    self.main_picture = parse_file
  end

  def set_base_location(_latitude, _longitude)
    self.base_location = Parse::GeoPoint.new(_latitude, _longitude)
  end
end
