class PagesController < ApplicationController
	def show
		render template: "pages/#{params[:page]}"
	end

	def index
		render template: "pages/homepage.html.erb"
	end
end
