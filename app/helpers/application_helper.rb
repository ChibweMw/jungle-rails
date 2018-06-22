module ApplicationHelper
  def include_correct_email(currUser)
    if currUser
      currUser.email
    else
      "guest"
    end
  end
end
