class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "yktmr@ruru.be", subject: "お問い合わせの確認メール"
  end
end
