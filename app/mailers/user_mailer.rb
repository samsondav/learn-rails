class UserMailer < ActionMailer::Base
  default from: "rails-mailer@example.com"

  def contact_email(contact)
    @contact = contact
    mail(to: ENV["OWNER_EMAIL"], from: @contact.email, subject: 'Contact via website')
  end
end
