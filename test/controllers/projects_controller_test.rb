require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url, as: :json
    assert_response :success
  end

  test "should create project" do
    assert_difference("Project.count") do
      post projects_url, params: { project: { completion: @project.completion, description: @project.description, estimate: @project.estimate, name: @project.name, priority: @project.priority, start: @project.start, supply1: @project.supply1, supply10: @project.supply10, supply2: @project.supply2, supply3: @project.supply3, supply4: @project.supply4, supply5: @project.supply5, supply6: @project.supply6, supply7: @project.supply7, supply8: @project.supply8, supply9: @project.supply9 } }, as: :json
    end

    assert_response :created
  end

  test "should show project" do
    get project_url(@project), as: :json
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { completion: @project.completion, description: @project.description, estimate: @project.estimate, name: @project.name, priority: @project.priority, start: @project.start, supply1: @project.supply1, supply10: @project.supply10, supply2: @project.supply2, supply3: @project.supply3, supply4: @project.supply4, supply5: @project.supply5, supply6: @project.supply6, supply7: @project.supply7, supply8: @project.supply8, supply9: @project.supply9 } }, as: :json
    assert_response :success
  end

  test "should destroy project" do
    assert_difference("Project.count", -1) do
      delete project_url(@project), as: :json
    end

    assert_response :no_content
  end
end
