class MainMailer < ApplicationMailer
    default from: "RMSI <postmaster@sandbox368076c8accb422b81651c418b0e8850.mailgun.org>"
    def signup_email
        mail(to: 'willdyoungs@gmail.com', subject: 'Welcome to Coop Workshift')
    end
end
