require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
 test "should create an article" do
  get new_article_path
  assert_response :success
  assert_difference("Article.count", 1) do
    post articles_path, params: { article: { name: "hihi", body: "hihe"}}
  end
    assert_redirected_to articles_path
  end

  test "should redirect to new" do
    get new_article_path
    assert_response :success
    assert_difference("Article.count", 0) do
      post articles_path, params: { article: { name: "", body: "something"}}
    end
    assert_response :success
    assert_template :new
  end
end