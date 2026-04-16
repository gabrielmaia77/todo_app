require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user é válido com name, email e password" do
    user = User.new(
      name: "João",
      email: "joao@email.com",
      password: "123456"
    )

    assert user.valid?
  end
end
