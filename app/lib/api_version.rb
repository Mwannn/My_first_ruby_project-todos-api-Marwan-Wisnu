class ApiVersion
    attr_reader :version, :default  # Menyediakan accessor untuk version dan default
  
    def initialize(version, default = false)
      @version = version          # Menyimpan versi API yang diberikan
      @default = default          # Menyimpan apakah versi ini adalah versi default
    end
  
    # Memeriksa apakah versi yang diberikan ada dalam permintaan atau jika ini adalah versi default
    def matches?(request)
      check_headers(request.headers) || default  # Mengembalikan true jika versi ditemukan atau versi ini adalah default
    end
  
    private
  
    # Memeriksa header untuk menentukan apakah versi yang diminta ada
    def check_headers(headers)
      # Memeriksa versi dari header Accept; mengharapkan tipe media kustom `todos`
      accept = headers[:accept]
      accept && accept.include?("application/vnd.todos.#{version}+json")  # Mengembalikan true jika versi ada di header
    end
  end
  