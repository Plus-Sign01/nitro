require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "nitro" }

  describe "Home page" do
   before { visit root_path }
    it "should have the content 'nitro'" do
      expect(page).to have_content('nitro')
    end

    it "should have the base title" do
      expect(page).to have_title("nitro")
    end

  end

  describe "About page" do
     
     it "should have the content 'About Us'" do
       visit about_path
       expect(page).to have_content('About Us')
     end
  end

  describe "Contact page" do 
     it "should have the content 'Contact'" do
       visit contact_path
       expect(page).to have_content('Contact')
     end
    
  end
end







