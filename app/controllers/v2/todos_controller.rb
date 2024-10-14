class V2::TodosController < ApplicationController
    # Mendefinisikan tindakan yang menangani permintaan terkait todo untuk versi 2 dari API
    def index
      # Mengembalikan respons JSON dengan pesan 'Hello there'
      json_response({ message: 'Hello there'})
    end
  end
  