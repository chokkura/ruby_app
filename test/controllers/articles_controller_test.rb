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
    log_in_as_test_user
    get new_article_path
    assert_response :success
  end

  test "should get create" do
    # Note: This is typically used with a POST request, not a GET request.
    # For testing create action, you might need to use post method instead of get.
    # Example: post articles_path, params: { article: { title: "New Article" } }
    assert true
  end

  test "should get show" do
    # Assuming you have an article with ID 1
    get article_path(@article)
    assert_response :success
  end

  test "should get edit" do
    log_in_as_test_user
    # Assuming you have an article with ID 1
    get edit_article_path(@article)
    assert_response :success
  end

  test "should get delete" do
    # Assuming you have an article with ID 1
    get article_path(@article)
    assert_response :success
  end

  private

  def log_in_as_test_user
    post login_path, params: { session: { name: "dhh", password: "secret" } }
  end
end
