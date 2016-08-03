module ClientsDoc
  extend BaseDoc
  resource :clients

  resource_description do
    # resource_id 'Users'
    formats [:json]
    api_versions 'public'
  end

  doc_for :index do
    api :GET, '/clients', 'List users'
    param :role, String, 'Filter users by role'
  end

  doc_for :show do
    api :GET, '/clients/:id', 'Show user'
    description 'Returns user with provided id'
    param :id, Integer, 'Id of user you want to fetch', required: true
  end

  doc_for :create do
    api! 'Create user'
    description 'Create user with specifed user params'
    param :user, Hash, desc: 'User information' do
      param :full_name, String, desc: 'Full name of the user you want to create'
      param :age, Fixnum, desc: 'Age of the user you want to create'
    end
  end
end