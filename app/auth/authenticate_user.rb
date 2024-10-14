class AuthenticateUser
    # Inisialisasi objek AuthenticateUser dengan email dan password pengguna.
    def initialize(email, password)
      @email = email          # Menyimpan email pengguna ke dalam variabel instance @email
      @password = password    # Menyimpan password pengguna ke dalam variabel instance @password
    end
  
    # Titik masuk layanan untuk melakukan otentikasi pengguna
    def call
      # Menghasilkan token JWT jika pengguna ditemukan dan otentikasi berhasil
      JsonWebToken.encode(user_id: user.id) if user
    end
  
    private
  
    attr_reader :email, :password  # Membuat reader untuk variabel instance email dan password
  
    # Memverifikasi kredensial pengguna
    def user
      user = User.find_by(email: email)  # Mencari pengguna berdasarkan email
      return user if user && user.authenticate(password)
      # Mengangkat error otentikasi jika kredensial tidak valid
      raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
    end
  end
  