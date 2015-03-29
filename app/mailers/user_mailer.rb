class UserMailer < ActionMailer::Base
    default from: "Test Screener <chris@testscreener.com>"

    def signup_email(user)
        @user = user
        @path = "#{root_url}"
        @twitter_message = "Online audience feedback screenings for film, tv & video. Viewers get paid! @testscreener"
        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
