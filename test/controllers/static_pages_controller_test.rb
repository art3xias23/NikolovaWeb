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
    get help_path
    assert_response :success
    assert_select "title", "Помощ | #{@base_title}"
  end

  test "should get about" do
  	get about_path
  	assert_response :success
    assert_select "title", "Информация | #{@base_title}"
  end 

  test "should get books" do
    get books_path
    assert_response :success
    assert_select "title", "Книги | #{@base_title}"
  end 

  test "should get news" do
    get news_path
    assert_response :success
    assert_select "title", "Новини | #{@base_title}"
  end 

  test "should get contac" do
    get contact_path
    assert_response :success
    assert_select "title", "Контакти | #{@base_title}"
  end 

end
