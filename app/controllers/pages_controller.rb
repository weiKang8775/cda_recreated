class PagesController < ApplicationController
  before_action :require_admin_user, only: [:edit, :update]
  before_action :set_page, only: [:edit, :update]

  def home
    @page = Page.first
  end

  def contact
  end

  def edit
  end

  def update
    if @page.update(page_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private
  def page_params
    params.require(:page).permit(:text)
  end

  def require_admin_user
    if !(logged_in? && current_user.admin?)
      redirect_to root_path
    end
  end

  def set_page
    @page = Page.find(params[:id])
  end
end