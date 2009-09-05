ActionController::Base.class_eval do
  protected

  def current_page
    params[:page].to_i < 1 ? 1 : params[:page].to_i
  end
  helper_method :current_page
end
