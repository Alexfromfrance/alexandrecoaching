class UserMailer < ApplicationMailer

  default from: "alexandre@alexandrecoaching.com"
  default to: "alexandre@alexandrecoaching.com"

  def new_message(contact)
    @contact = contact
    mail subject: 'Nouvelle demande de coaching: ' + @contact[:subject]
  end

 def welcome_email
    @user = params[:user]
    @url  = 'http://alexandrecoaching.com'
    mail(to: @user.email, subject: 'Merci pour votre demande de contact')
  end

end

