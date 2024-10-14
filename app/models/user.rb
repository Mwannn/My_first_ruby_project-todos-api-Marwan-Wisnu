class User < ApplicationRecord
    # Meng-enkripsi password pengguna
    has_secure_password
  
    # Asosiasi model: Pengguna memiliki banyak Todo yang dibuat oleh mereka
    has_many :todos, foreign_key: :created_by

    # Validasi: Memastikan bahwa atribut name, email, dan password_digest tidak boleh kosong
    validates_presence_of :name, :email, :password_digest
end
