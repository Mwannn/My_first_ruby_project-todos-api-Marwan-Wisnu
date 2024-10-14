Rails.application.routes.draw do
  # Untuk rincian tentang DSL yang tersedia dalam file ini, lihat http://guides.rubyonrails.org/routing.html

  # Mengatur modul untuk pengendali tanpa mempengaruhi URI
  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :todos, only: :index
  end

  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    # [...]
  end
  # [...]
end
