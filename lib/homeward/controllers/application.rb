class ApplicationController
  private

  def current_page
    params[:page].to_i < 1 ? 1 : params[:page].to_i
  end
end
