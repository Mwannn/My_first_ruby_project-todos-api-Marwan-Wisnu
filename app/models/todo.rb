class Todo < ApplicationRecord
  # Asosiasi model: Todo memiliki banyak Item
  has_many :items, dependent: :destroy

  # Validasi: Memastikan bahwa atribut title dan created_by tidak boleh kosong
  validates_presence_of :title, :created_by
end
