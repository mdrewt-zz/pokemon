class Type < ApplicationRecord
  has_many :primary_species, class_name: "Species", foreign_key: "primary_type_id"
  has_many :secondary_species, class_name: "Species", foreign_key: "secondary_type_id"
end
