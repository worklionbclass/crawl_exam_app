require 'test_helper'

class NaverTvsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get naver_tvs_index_url
    assert_response :success
  end

  test "should get crawl" do
    get naver_tvs_crawl_url
    assert_response :success
  end

end
