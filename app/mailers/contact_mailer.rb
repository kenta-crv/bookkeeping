class ContactMailer < ActionMailer::Base
  default from: "info@k-speas.jp"
  default to: "info@k-speas.jp"

  def received_email(contact)
    @contact = contact
    mail(subject: '記帳代行サポートよりメッセージが届きました') do |format|
      format.text
    end
  end

end
