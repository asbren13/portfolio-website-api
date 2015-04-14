class PortfolioMailer < ActionMailer::Base

  attr_accessor :sender, :body

  def email(data)
    @sender = data['sender']
    @body = data['body']
    mail(subject: 'Correspondence from Portfolio Site',
         to: "abrennanportfoliosite@gmail.com",
         from: "abrennanportfoliosite@gmail.com",
         template_path: 'portfolio_mailer')
  end
end
