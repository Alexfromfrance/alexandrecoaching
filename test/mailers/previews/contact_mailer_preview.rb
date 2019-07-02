# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contactuser
    contact = Contact.first
    # This is how you pass value to params[:user] inside mailer definition!
    ContactMailer.with(contact: contact).welcome
  end
end
