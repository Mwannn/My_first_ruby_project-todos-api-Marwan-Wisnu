class Item < ApplicationRecord
  # Asosiasi model: Item berhubungan dengan model Todo
  belongs_to :todo

  # Validasi: Memastikan bahwa atribut name tidak boleh kosong
  validates_presence_of :name
end
