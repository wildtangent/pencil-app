class ApplicationController < ActionController::Base
  layout :layout_by_resource

  before_action :set_title
  before_action :set_logo

  private
  def set_title
    @title = "Wedding Leads"
  end

  def set_logo
    if user_signed_in?
      @logo = current_user.setting.logo_image
    end
  end

  def layout_by_resource
    if devise_controller?
      "authentication"
    else
      "application"
    end
  end
end
