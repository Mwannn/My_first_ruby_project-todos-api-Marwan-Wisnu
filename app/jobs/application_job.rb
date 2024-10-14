class ApplicationJob < ActiveJob::Base
  # Secara otomatis mencoba ulang pekerjaan yang mengalami deadlock
  # retry_on ActiveRecord::Deadlocked

  # Sebagian besar pekerjaan aman untuk diabaikan jika catatan yang mendasarinya tidak lagi tersedia
  # discard_on ActiveJob::DeserializationError
end
