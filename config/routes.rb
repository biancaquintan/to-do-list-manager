Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get 'list_managers/:id', to: 'list_managers#list_view'
      post 'list_managers/:id/add_item', to: 'list_managers#add_item'
      delete 'list_managers/:id/remove_item/:id', to: 'list_managers#remove_item'
      patch 'list_managers/:id/items/:id/update_status', to: 'list_managers#update_item_status'
    end
  end
end
