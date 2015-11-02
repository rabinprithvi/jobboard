class JobsController < ApplicationController
	def index
		@query = params[:q].presence || "*"
    	@jobs = Job.search(@query)
	end

	def autocomplete
		render json: Job.search(params[:term], fields: [{title: :text_start}], limit: 10).map(&:title)
	end
end
