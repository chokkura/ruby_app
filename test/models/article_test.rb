require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should be valid" do
    article = Article.new(title: "Example Title", content: "Example Content")
    assert article.valid?
  end
end
