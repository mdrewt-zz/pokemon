class TypeEffect < ApplicationRecord
  belongs_to move_type, class_name: "Type"
  belongs_to target_type, class_name: "Type"
end
