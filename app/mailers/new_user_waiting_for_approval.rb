class NewUserWaitingForApproval < ActionMailer::Base
  default from: "ianwambai@gmail.com"

   def send_admin_mail
   mail :to => "ianwambai@gmail.com", subject: 'Registration Request'
   end
end
