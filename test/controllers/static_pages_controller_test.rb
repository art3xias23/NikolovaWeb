require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "NikolovaWeb"
  end


  test "should get root" do
    get '/'
    assert_response :success
    assert_select "title", "Главна Страница | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Помощ | #{@base_title}"
  end

  test "should get about" do
  	get static_pages_about_url
  	assert_response :success
    assert_select "title", "Информация | #{@base_title}"
  end 

end
