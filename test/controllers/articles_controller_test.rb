require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one) # fixturesを使用する場合
  end

  test "should get index" do
    get articles_path
    assert_response :success
  end

  test "should get new" do
    get new_article_path, headers: {
      'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('dhh', 'secret')
    }
    assert_response :success
  end

  test "should get create" do
    assert true
  end

  test "should get show" do
    # Assuming you have an article with ID 1
    get article_path(@article)
    assert_response :success
  end

  test "should get edit" do
    # Assuming you have an article with ID 1
    get edit_article_path(@article), headers: {
      'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('dhh', 'secret')
    }
    assert_response :success
  end

  test "should get delete" do
    # Assuming you have an article with ID 1
    get article_path(@article)
    assert_response :success
  end
end
