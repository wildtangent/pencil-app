class SettingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @setting = current_user.setting || current_user.build_setting
  end
end
