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
end