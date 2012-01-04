class ApplicationController < ActionController::Base
  protect_from_forgery

  def render_to_pjax(action)
    render action: action, :layout => pjax?
  end

  def pjax?
    env['HTTP_X_PJAX'].blank?
  end
end
