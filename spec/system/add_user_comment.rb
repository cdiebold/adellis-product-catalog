require "rails_helper"

RSpec.describe "adding a comment", type: :system do
    it "allows a user to send us a comment from the contact page" do
        visit contact_page_path
        fill_in "title", with: "Question about order number 1234rfdews"
        fill_in "message", with: "I accidently ordered only one aircraft wing, I actually need 2. Can you update my order please."
        click_on "Submit"

        expect(page).to have_content("Comment was submitted.")
    end
end
