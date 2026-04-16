require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "deve criar uma task com sucesso" do
    user = User.create!(
      name: "Teste",
      email: "teste@email.com",
      password: "123456"
    )

    # simula login (isso é essencial no seu app)
    post login_url, params: {
      email: user.email,
      password: "123456"
    }

    assert_response :redirect

    follow_redirect!

    assert_difference("Task.count", 1) do
      post tasks_path, params: {
        task: {
          title: "Estudar Rails"
        }
      }
    end

    assert_response :redirect
  end
end
