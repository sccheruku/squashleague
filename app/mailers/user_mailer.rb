class UserMailer < ActionMailer::Base
  default :from => "schaitanya.couch@gmail.com"
  
  def registration_confirmation(user, generated_password)
	  @user = user #use this as you would in a controller
	  @generated_password = generated_password
  	mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end