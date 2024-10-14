class JsonWebToken
    # rahasia untuk mengenkripsi dan mendekripsi token
    HMAC_SECRET = Rails.application.secrets.secret_key_base
  
    # Mengkodekan payload menjadi token dengan waktu kedaluwarsa opsional
    def self.encode(payload, exp = 24.hours.from_now)
        # menetapkan masa berlaku menjadi 24 jam dari waktu pembuatan
        payload[:exp] = exp.to_i
        # menandatangani token dengan rahasia aplikasi
        JWT.encode(payload, HMAC_SECRET)
    end
  
    # Mendekode token dan mengembalikan payload
    def self.decode(token)
        # mengambil payload; indeks pertama dalam array yang didekode
        body = JWT.decode(token, HMAC_SECRET)[0]
        HashWithIndifferentAccess.new body
        # menangkap semua kesalahan dekode
    rescue JWT::DecodeError => e
        # mengangkat kesalahan khusus untuk ditangani oleh pengendali khusus
        raise ExceptionHandler::InvalidToken, e.message
    end
end
