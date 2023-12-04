require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should be valid" do
    article = Article.new(title: "Example Title", body: "Example Content", status: "public")
    assert article.valid?
  end
end
