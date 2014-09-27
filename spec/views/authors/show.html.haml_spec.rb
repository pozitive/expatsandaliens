require 'rails_helper'

RSpec.describe "authors/show", :type => :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :name => "Name",
      :avatar => "Avatar",
      :email => "Email",
      :website => "Website",
      :bio => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/MyText/)
  end
end
