module Homeward
  module ControllerHelpers
    protected

    def current_page
      params[:page].to_i < 1 ? 1 : params[:page].to_i
    end
  end
end

