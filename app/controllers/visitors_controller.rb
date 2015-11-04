class VisitorsController < ApplicationController
	require 'postman_worker'
	def contact
  	end

	def mail
	h = JSON.generate({ 'name' => params[:name],
	                    'email' => params[:email],
	                    'message' => params[:message] })

	PostmanWorker.perform_async(h, 5)

	# if instead of sidekiq I was just sending email from rails
	# VisitorMailer.contact_email(@name, @email, @message).deliver

	redirect_to :root
	end
end
