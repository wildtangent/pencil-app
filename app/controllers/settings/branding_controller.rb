class Settings::BrandingController < ApplicationController
  before_action :authenticate_user!
  before_action :get_setting

  def index
  end

  def show
  end

  def create
    @setting.update(branding_params)
    redirect_to settings_branding_path
  end

  def update
    @setting.update(branding_params)
    redirect_to settings_branding_path
  end


  private
  def get_setting
    @setting = current_user.setting || current_user.build_setting
  end

  def branding_params
    params.require(:setting).permit(:logo_image, :banner_image)
  end
end
