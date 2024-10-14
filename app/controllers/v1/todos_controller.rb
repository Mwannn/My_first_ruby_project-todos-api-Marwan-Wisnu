module V1
  class TodosController < ApplicationController
    # Tempat untuk mendefinisikan tindakan yang menangani permintaan terkait todo
    # [...]

    # GET /todos
    def index
      # Mengambil todo milik pengguna saat ini dengan pagination
      @todos = current_user.todos.paginate(page: params[:page], per_page: 20)
      json_response(@todos)  # Mengembalikan respons JSON dengan daftar todos
    end

    # [...]
  end
end
