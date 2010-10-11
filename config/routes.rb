BlogExample::Application.routes.draw do
  resources :posts, :only => [:new, :create, :show]
end
