 require 'spec_helper'
 describe "Static pages" do
　　let(:base_title) { "nitro" }
　　describe "Home page" do
     it "should have the content 'nitro'" do
       expect(page).to have_content('nitro')
     end
　　　it "should have the base title" do
       expect(page).to have_title("nitro")
     end
   end
 end
