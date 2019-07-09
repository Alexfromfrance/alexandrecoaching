class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @contact = Contact.new
  end

=begin  def send_mail
    if MessageMailer.new_message(contact_params).deliver_now
      redirect_to root_path
      flash[:notice] = 'Your messages has been sent.'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :content)
  end
=end
end
