class TodoSerializer < ActiveModel::Serializer
  # Atribut yang akan diserialisasi
  attributes :id, :title, :created_by, :created_at, :updated_at
  
  # Asosiasi model: Todo memiliki banyak Item
  has_many :items
end
