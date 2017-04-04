class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # this is the reason why we use devise, all the cool things we inherit

  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    # the request.env[omniauth.auth] is where omniauth
    # takes the parameters that facebook sends back and creates an @user

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
      set_flash_message(:notice, :success, :kind => "Facebook") if
      is_navigational_format?
      p "@" * 100
      p params
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
