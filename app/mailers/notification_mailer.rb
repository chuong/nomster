class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomster-chuong-nguyen.herokuapp.com"

  def comment_added
    mail(to: 'chuong.v.nguyen@gmail.com',
    subject: 'A comment has been added to your place')
  end
end
