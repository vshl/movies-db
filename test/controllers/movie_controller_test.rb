require 'test_helper'

class MovieControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get index' do
    get movies_url
    assert_response :success
  end
end
