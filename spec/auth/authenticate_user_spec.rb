require 'rails_helper'

RSpec.describe AuthenticateUser do
  # Membuat pengguna uji
  let(:user) { create(:user) }
  # Subjek permintaan yang valid
  subject(:valid_auth_obj) { described_class.new(user.email, user.password) }
  # Subjek permintaan yang tidak valid
  subject(:invalid_auth_obj) { described_class.new('foo', 'bar') }

  # Suite pengujian untuk AuthenticateUser#call
  describe '#call' do
    # Mengembalikan token ketika permintaan valid
    context 'when valid credentials' do
      it 'returns an auth token' do
        token = valid_auth_obj.call
        expect(token).not_to be_nil
      end
    end

    # Mengangkat kesalahan otentikasi ketika permintaan tidak valid
    context 'when invalid credentials' do
      it 'raises an authentication error' do
        expect { invalid_auth_obj.call }
          .to raise_error(
            ExceptionHandler::AuthenticationError,
            /Invalid credentials/
          )
      end
    end
  end
end
