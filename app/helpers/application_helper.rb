module ApplicationHelper
  def user_id
    cookies["user_id"] ||= rand(1...1000)
  end

  def user_name
    "User #{user_id}"
  end
end
