class ApplicationController < ActionController::API
  include Response      # Menyertakan modul Response untuk penanganan respons JSON
  include ExceptionHandler  # Menyertakan modul ExceptionHandler untuk penanganan error

  # Dipanggil sebelum setiap aksi di kontroler
  before_action :authorize_request
  attr_reader :current_user  # Membuat accessor untuk current_user

  private

  # Memeriksa token permintaan yang valid dan mengembalikan pengguna
  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
  end
end
