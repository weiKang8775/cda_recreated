class PagesController < ApplicationController
  before_action :require_user, only: [:edit, :update]

  def home
    @page = Page.first
  end

  def contact
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    byebug
    if @page.update(page_params)
      redirect_to home_path
    else
      render 'edit'
    end
  end

  private
  def page_params
    params.require(:page).permit(:content)
  end

  def require_admin_user
    if !(logged_in? && current_user.admin?)
      redirect_to home_path
    end
  end
end