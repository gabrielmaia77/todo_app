require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "deve criar uma task com sucesso" do
    user = User.create!(
      name: "Teste",
      email: "teste@email.com",
      password: "123456"
    )

    post tasks_path, params: {
      task: {
        title: "Estudar Rails"
      }
    }, session: {
      user_id: user.id
    }

    assert_response :redirect
  end
end
