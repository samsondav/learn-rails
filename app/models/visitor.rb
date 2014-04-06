class Visitor
  include ActiveModel::Model

  attr_accessor :email
  validates :email, format: { :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i, message: "must be a valid email" }

  def subscribe
    mailchimp = Gibbon::API.new
    result = mailchimp.lists.subscribe({id: ENV['MAILCHIMP_LIST_ID'],
                                        email: { email: self.email },
                                        double_optin: false,
                                        update_existing: true,
                                        send_welcome: true})
    Rails.logger.info "Subscribed #{self.email} to Mailchimp" if result
  end
end
