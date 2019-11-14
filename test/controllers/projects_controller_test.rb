require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get index" do
    get projects_index_url
    assert_response :success
  end

>>>>>>> 0e06aa44fa4d11c5206ab9a1cf972103d93f81b4
end
