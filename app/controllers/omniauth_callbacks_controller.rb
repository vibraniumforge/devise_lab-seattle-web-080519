class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
  sign_in_and_redirect @user
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end


end