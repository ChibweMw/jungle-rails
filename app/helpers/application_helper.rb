module ApplicationHelper
  def include_correct_email(currUser)
    if currUser
      currUser.email
    else
      "guest"
    end
  end

  def include_correct_name(currUser)
    if currUser
      currUser.first_name
    else
      "guest"
    end
  end
end
