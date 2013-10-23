NoFormatTest::Application.routes.draw do
  root 'root#index'
  scope format: false do
    scope '/foo/:bar' do
      constraints bar: %r{[^/]+} do
        get '/', to: 'root#index'
        get '/baz', to: 'root#index'
      end
    end
  end
end
