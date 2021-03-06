class UserMailer < ActionMailer::Base
  default :from => 'BODA@example.com'

  def registration_confirmation(user, origin)
    # назначення глобальних змінних для використання у вюшкі
    @user = user
    @origin = origin
    mail(:to => "#{user.full_name} <#{user.email}>", :subject => "Registration Confirmation")
  end
end