require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout_links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path
  end

  test "help_route" do
    get help_path
    assert_template 'static_pages/help'
    assert_select "h1", 'Help'
    assert_select "a[href=?]", "https://www.railstutorial.org/help", text: "Rails Tutorial help page"
  end

  test "signup_route" do
    get signup_path
    assert_template 'users/new'
    assert_select "title", full_title("signup")
  end

end