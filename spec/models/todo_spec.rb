require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Association test
  it { is_expected.to have_many(:items).dependent(:destroy) }

  # Validation tests
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:created_by) }
end
