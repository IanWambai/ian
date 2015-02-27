class AdminMailer < ActionMailer::Base
  default from: "ianwambai@gmail.com"

  def user_approval(user)
  mail :to => "ianwambai@gmail.com", subject: 'Registration Request'
  format.html { render 'user_approval_email' }
  format.text { render text: 'Render text' }
  end
end
