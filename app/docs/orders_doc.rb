module OrdersDoc
  extend BaseDoc
  resource :orders

  resource_description do
    # resource_id 'orders'
    formats [:json]
    api_versions 'public'
  end

  doc_for :index do
    api :GET, '/orders', 'List orders'
    param :role, String, 'Filter orders'
  end

  doc_for :show do
    api :GET, '/orders/:id', 'Show order'
    description 'Returns order with provided id'
    param :id, Integer, 'Id of order you want to fetch', required: true
  end

  doc_for :create do
    api :POST, '/orders', 'Create order'
    description 'Create order with specifed order params'
    param :order, Hash, desc: 'order information' do
      param :full_name, String, desc: 'Full name of the order you want to create'
      param :age, Fixnum, desc: 'Age of the order you want to create'
    end
  end
end