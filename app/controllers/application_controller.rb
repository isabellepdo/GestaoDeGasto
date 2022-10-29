class ApplicationController < ActionController::Base
  def query_params
		query = params[:q] || {}
		Hash[query.each { |key, value| [key, value.strip] }]
	end
end
