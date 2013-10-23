NoFormatTest::Application.routes.draw do
  root 'root#index'
  get '/foo/:bar/baz', to: 'root#index', format: false
end
