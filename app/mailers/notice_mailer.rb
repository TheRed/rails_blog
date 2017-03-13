# frozen_string_literal: true
class NoticeMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  default from: 'noreply@example.com'
  def sendmail_confirm(blog, entry, comment)
    @blog = blog
    @entry = entry
    @comment = comment

    mail to: 'admin@example.com', subject: '新しいコメントが投稿されました'
  end
end
