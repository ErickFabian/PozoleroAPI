module Pagination
  def paginate(scope, options = {})
    scope = scope.paginate(
      page: params[:page],
      per_page: params[:per_page]
    )

    options.merge!(meta: {
      total_pages: scope.total_pages
    })

    render({ json: scope }.merge(options))
  end
end