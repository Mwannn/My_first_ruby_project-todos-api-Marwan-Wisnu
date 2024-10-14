module ExceptionHandler
  # Menggunakan ActiveSupport::Concern untuk menyediakan metode `included` yang lebih bersih
  extend ActiveSupport::Concern

  included do
    # Menangkap exception ActiveRecord::RecordNotFound
    rescue_from ActiveRecord::RecordNotFound do |e|
      # Mengembalikan response JSON dengan pesan error dan status 404 Not Found
      json_response({ message: e.message }, :not_found)
    end

    # Menangkap exception ActiveRecord::RecordInvalid
    rescue_from ActiveRecord::RecordInvalid do |e|
      # Mengembalikan response JSON dengan pesan error dan status 422 Unprocessable Entity
      json_response({ message: e.message }, :unprocessable_entity)
    end
  end
end
