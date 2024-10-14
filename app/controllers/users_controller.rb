class UsersController < ApplicationController
    # Melewati pemanggilan authorize_request sebelum aksi create
    skip_before_action :authorize_request, only: :create
  
    # Tempat untuk mendefinisikan metode yang menangani permintaan pengguna
    # [...]
  end
  