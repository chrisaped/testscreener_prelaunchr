if Rails.env.development?
  class MailPreview < MailView

    def signup_email
      user = Struct.new(:email, :referral_code).new('name@example.com', 'f19ad2ad3b')
      mail = UserMailer.signup_email(user)
      mail
    end

  end
end