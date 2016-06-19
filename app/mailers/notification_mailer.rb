class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomster-chuong-nguyen.herokuapp.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user

    if @place_owner
      mail(to: @place_owner.email,
           subject: "A comment has been added to #{@place.name}")
     else
       puts "No owner info found. Don't send notification."
     end
  end
end
