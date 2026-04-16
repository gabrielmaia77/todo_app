require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user é válido com dados corretos" do
    user = User.new(
      name: "Maia",
      email: "maia@email.com",
      password: "123456"
    )

    assert user.valid?
  end

  test "user não pode ser criado sem email" do
    user = User.new(name: "Maia")

    assert_not user.valid?
  end
end
