class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "yktmr@sute.jp", subject: "お問い合わせの確認メール"
  end
end
