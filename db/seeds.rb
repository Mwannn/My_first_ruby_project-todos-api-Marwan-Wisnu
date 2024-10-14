# db/seeds.rb

# Buat 5 pengguna jika belum ada
unless User.exists?  # Memeriksa apakah tidak ada pengguna di basis data
    5.times do  # Mengulangi blok kode di dalamnya sebanyak 5 kali
      User.create(  # Membuat dan menyimpan pengguna baru ke dalam basis data
        name: Faker::Name.name,  # Menghasilkan nama pengguna secara acak
        email: Faker::Internet.email,  # Menghasilkan alamat email pengguna secara acak
        password: 'foobar'  # Mengatur password untuk semua pengguna menjadi 'foobar'
      )
    end
  end
  
  # Seed 50 records of todos with items
  50.times do  # Mengulangi blok kode di dalamnya sebanyak 50 kali untuk membuat 50 entri todo
    todo = Todo.create(  # Membuat dan menyimpan entri todo baru ke dalam basis data
      title: Faker::Lorem.word,  # Menghasilkan judul todo secara acak
      created_by: User.first.id  # Menetapkan kolom created_by pada todo dengan ID pengguna pertama
    )
    todo.items.create(  # Membuat dan menyimpan item baru yang terkait dengan todo yang baru dibuat
      name: Faker::Lorem.word,  # Menghasilkan nama item secara acak
      done: false  # Menetapkan status item done sebagai false (belum selesai)
    )
  end
  