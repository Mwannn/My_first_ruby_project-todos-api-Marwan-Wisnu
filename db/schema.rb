# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_14_152956) do
  # Mendefinisikan tabel "items"
  create_table "items", force: :cascade do |t|
    t.string "name"  # Kolom string untuk menyimpan nama item
    t.boolean "done"  # Kolom boolean untuk menunjukkan status selesai
    t.integer "todo_id"  # Kolom integer untuk menyimpan ID todo yang terkait
    t.datetime "created_at", precision: nil, null: false  # Waktu pembuatan item
    t.datetime "updated_at", precision: nil, null: false  # Waktu pembaruan item
    t.index ["todo_id"], name: "index_items_on_todo_id"  # Indeks untuk kolom todo_id
  end

  # Mendefinisikan tabel "todos"
  create_table "todos", force: :cascade do |t|
    t.string "title"  # Kolom string untuk menyimpan judul todo
    t.string "created_by"  # Kolom string untuk menyimpan informasi pencipta todo
    t.datetime "created_at", null: false  # Waktu pembuatan todo
    t.datetime "updated_at", null: false  # Waktu pembaruan todo
  end

  # Mendefinisikan tabel "users"
  create_table "users", force: :cascade do |t|
    t.string "name"  # Kolom string untuk menyimpan nama pengguna
    t.string "email"  # Kolom string untuk menyimpan alamat email pengguna
    t.string "password_digest"  # Kolom string untuk menyimpan hash dari password pengguna
    t.datetime "created_at", null: false  # Waktu pembuatan pengguna
    t.datetime "updated_at", null: false  # Waktu pembaruan pengguna
  end

  # Menambahkan foreign key pada tabel items
  add_foreign_key "items", "todos"  # Menghubungkan item dengan todo yang sesuai
end
