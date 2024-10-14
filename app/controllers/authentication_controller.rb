class AuthenticationController < ApplicationController
    # Melewati pemanggilan authorize_request sebelum aksi authenticate
    skip_before_action :authorize_request, only: :authenticate
  
    # Tempat untuk mendefinisikan metode yang menangani autentikasi pengguna
    # [...]
  end
  