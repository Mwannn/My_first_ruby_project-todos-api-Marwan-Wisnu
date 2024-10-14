class ApplicationMailer < ActionMailer::Base
  # Menetapkan alamat email default untuk pengirim
  default from: "from@example.com"
  
  # Menetapkan layout default yang digunakan untuk email
  layout "mailer"
end
