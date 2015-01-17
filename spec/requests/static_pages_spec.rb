require 'spec_helper'
describe "Static pages" do
　let(:base_title) { "nitro" }
  subject { page }
  describe "Home page" do
      it { is_expected.to have_content("nitro") }
      it { is_expected.to have_title("nitro") }
    context 'user is not logged_in_user' do
      before do
        visit user_omniauth_authorize_path(:facebook)
      end
        it { is_expected.to have_title("Login") }
      end
    end
    context 'user is logged_in_user' do 
      before do
        visit logout_path
      end
        it { is_expected.to have_title("Logout") }
    end    
  end
end


     
