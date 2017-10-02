class ApplicationsController < ApplicationController

  def create
    @application = current_user.applications.new(applications_params)

    if @application.save
      redirect_to user_path(current_user)
      flash[:notice] = "Application successfully registered!"
    else
      flash[:alert] = "Application was not registered. Please try again."
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @application = Application.find(params[:id])
    @application.destroy

    redirect_to user_path(current_user)
  end

  private

  def applications_params
    params.require(:application).permit(:name, :url)
  end

end
