require 'rails_helper'

RSpec.describe "authors/edit", :type => :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :name => "MyString",
      :avatar => "MyString",
      :email => "MyString",
      :website => "MyString",
      :bio => "MyText"
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input#author_name[name=?]", "author[name]"

      assert_select "input#author_avatar[name=?]", "author[avatar]"

      assert_select "input#author_email[name=?]", "author[email]"

      assert_select "input#author_website[name=?]", "author[website]"

      assert_select "textarea#author_bio[name=?]", "author[bio]"
    end
  end
end
