require 'rails_helper'
require './features/support/omni_auth_fixtures'

RSpec.describe User, type: :model do
  it { is_expected.to have_db_column :email }
  it { is_expected.to have_db_column :encrypted_password }

  describe 'Validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :password }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:user)).to be_valid 
    end
  end

  describe 'OAuth methods' do 
    let(:auth_response) {OmniAuth::AuthHash.new(OmniAuthFixtures.facebook_mock)}
    it "creates an instance from an oauth hash" do
      create_user = lambda {User.from_omniauth(auth_response)
      }
      expect{create_user.call}.to change{User.count}.from(0).to(1)
    end
  end

end