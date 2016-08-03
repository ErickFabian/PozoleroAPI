module Controllers::ClientsControllerDocs
  extend BaseDoc

  namespace 'api/v1', name: 'private_v1'
  resource :profiles

  resource_description do
    short 'Private profiles'
  end

  defaults do
    auth_with :password
  end

  doc_for :show do
    api :GET, '/v1/profiles/:id', 'Show profile'
    param :id, String
  end

  doc_for :verify do
    api :POST, '/v1/profiles/:id/verify', 'Verify profile with specified ID'
    param :id, String
  end
end