module Response
  # Metode untuk mengembalikan respons dalam format JSON
  def json_response(object, status = :ok)
    # Menggunakan metode render untuk mengirim respons JSON dengan objek dan status yang ditentukan
    render json: object, status: status
  end
end
