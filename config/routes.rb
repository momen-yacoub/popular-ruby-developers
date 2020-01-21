Rails.application.routes.draw do
  root to: 'trending_developers#list'
  scope 'api' do
    get 'trending_developers/list'
  end
end
