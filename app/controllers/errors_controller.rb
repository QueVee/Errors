class ErrorsController < ApplicationController
	before_action :find_error, only: [ :show, :update, :edit, :destroy ]

	def index
		@errors = Error.all
	end

	def show
	end

	def new
		@error = Error.new
	end

	def create
  @error = Error.create( error_params )
  redirect_to @error
	end

	def update
		@error.update(error_params)
		redirect_to @error
	end

	def edit
	end

	def destroy
		@error.destroy
		redirect_to root_url
	end

private

	def find_error
		@error = Error.find(params[:id])
	end

	def error_params
	  params.require(:error).permit(:image, :title, :text)
	end

end
