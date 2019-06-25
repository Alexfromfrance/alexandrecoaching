class Contact < MailForm::Base
  validates :name, :email, :phone, :content, presence: true

    def headers
    {
      :subject => "Nouvelle demance de coaching",
      :to => "alexandre@alexandrecoaching.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
