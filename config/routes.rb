ActionController::Routing::Routes.draw do |map|

  # All routing errors are rescued by a routine which redirects everything to echo.to
  map.root :controller => 'application', :action => 'redirect_to_new_host'

end
