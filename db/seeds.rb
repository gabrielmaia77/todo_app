User.find_or_create_by!(email: "admin123@gmail.com") do |user|
  user.name = "Admin"
  user.password = "1234"
end
