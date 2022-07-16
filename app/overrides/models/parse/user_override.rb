Parse::User.class_eval do
  has_many :created_cats, as: :cats, field: :creator
  has_many :protected_cats, as: :cats, field: :main_protector

  property :first_name
  property :last_name
  property :picture
end
