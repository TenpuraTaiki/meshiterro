class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # デフォルトでは用意されていないカラムをdeviseに追加して使う場合に必要（今回の場合はname）
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitilizer.permit(:sing_up, keys: [:name])
    
  end
  # ここまで
end
