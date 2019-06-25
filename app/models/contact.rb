class Contact < MailForm::Base
  attribute :name, presence: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone, presence: true
  attribute :content, presence: true

  def headers
    {
      subject: "Nouvelle demance de coaching",
      to: "alexandre@alexandrecoaching.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
