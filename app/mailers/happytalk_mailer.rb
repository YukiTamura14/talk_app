class HappytalkMailer < ApplicationMailer
  def happytalk_mail(happy_talk)
    @happy_talk = happy_talk
    mail to: @happy_talk.user.email, subject: "Happy Talkが投稿されました！"
  end
end
