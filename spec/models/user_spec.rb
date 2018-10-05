require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_db_column :email }
  it { is_expected.to have_db_column :encrypted_password }

  describe 'Validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :password }
  end
end