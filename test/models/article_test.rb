require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "name must be present" do
    article = Article.new(name: "")
    assert article.valid?, "article has a name"
  end
end
