# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  rescue_from 'ActionController::RoutingError', :with => :redirect_to_new_host

  public
  def redirect_to_new_host
    if defined?(OLD_ECHO_HOST) && request.host.include?(OLD_ECHO_HOST)
      new_url = request.protocol + ECHO_HOST + request.request_uri
      logger.info "#{Time.now.utc} - URL '#{request.url}' will now be redirected to '#{new_url}'"
      redirect_to new_url, :status => :moved_permanently
    end
  end

end
