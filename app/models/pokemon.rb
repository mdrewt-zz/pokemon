class Pokemon < ApplicationRecord
  self.table_name = "pokemon"

  belongs_to :user
  belongs_to :species
  belongs_to :move_1, class_name: "Move"
  belongs_to :move_2, class_name: "Move"
  belongs_to :move_3, class_name: "Move"
  belongs_to :move_4, class_name: "Move"
end
