require 'rails_helper'

RSpec.describe WelcomeHelper, :type => :helper do
  describe "#promo_text" do
    it "displays and formatted the title of promo article" do
      title = "Tips for Starting your New Life in Cambodia"
      expect(helper.promo_text(title)).to match("<h1><span class=\"hero-color\">TIPS FOR </span><br />STARTING YOUR NEW<br />LIFE IN CAMBODIA</h1>")
    end
  end
end
