class Species < ApplicationRecord
  has_many :pokemon, dependent: :destroy
  belongs_to :primary_type, class_name: "Type"
  belongs_to :secondary_type, class_name: "Type"
end

# :class_name, :anonymous_class, :foreign_key, :validate, :autosave, :foreign_type, :dependent, :primary_key, :inverse_of, :required, :polymorphic, :touch, :counter_cache, :optional, :default
