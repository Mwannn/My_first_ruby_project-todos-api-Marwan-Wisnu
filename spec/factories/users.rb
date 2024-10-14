# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { 'foo@bar.com' }  # Memperbaiki penggunaan string literal dalam block
    password { 'foobar' }    # Memperbaiki penggunaan string literal dalam block
  end
end
