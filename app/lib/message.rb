# app/lib/message.rb
class Message
    # Mengembalikan pesan bahwa record tidak ditemukan
    def self.not_found(record = 'record')
      "Sorry, #{record} not found."
    end
  
    # Mengembalikan pesan untuk kredensial yang tidak valid
    def self.invalid_credentials
      'Invalid credentials'
    end
  
    # Mengembalikan pesan untuk token yang tidak valid
    def self.invalid_token
      'Invalid token'
    end
  
    # Mengembalikan pesan untuk token yang hilang
    def self.missing_token
      'Missing token'
    end
  
    # Mengembalikan pesan untuk permintaan yang tidak terotorisasi
    def self.unauthorized
      'Unauthorized request'
    end
  
    # Mengembalikan pesan bahwa akun berhasil dibuat
    def self.account_created
      'Account created successfully'
    end
  
    # Mengembalikan pesan bahwa akun tidak dapat dibuat
    def self.account_not_created
      'Account could not be created'
    end
  
    # Mengembalikan pesan bahwa token telah kedaluwarsa
    def self.expired_token
      'Sorry, your token has expired. Please login to continue.'
    end
end
