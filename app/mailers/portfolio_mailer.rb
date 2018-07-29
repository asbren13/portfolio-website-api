class PortfolioMailer < ActionMailer::Base

  attr_accessor :sender, :body

  def email(data)
    @name = data['name']
    @sender = data['sender']
    @body = data['body']
    mail(subject: 'Correspondence from Portfolio Site',
         to: "asbren13@gmail.com",
         from: "abrennanportfoliosite@gmail.com",
         template_path: 'portfolio_mailer')
  end
end
