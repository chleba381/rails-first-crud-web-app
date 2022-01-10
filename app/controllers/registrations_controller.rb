class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(users)
    edit_user_registration_path
  end

  def after_inactive_sign_up_path_for(users)
    edit_user_registration_path
  end
end