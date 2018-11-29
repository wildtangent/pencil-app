class LeadsController < ApplicationController

  layout 'leads'

  before_action :authenticate_user!

  def index
  end

  def new
    @lead = current_user.leads.new
  end

  def create
    @lead = current_user.leads.create(lead_params)
    if @lead.save
      redirect_to leads_path, flash: { notice: "Thanks for your details, we'll be in touch in a jiffy!"}
    else
      render :new
    end
  end

  private
  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :email, :phone)
  end
end
