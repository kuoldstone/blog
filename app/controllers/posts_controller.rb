class PostsController < ApplicationController

	before_action :find_group

	def show
		@post = @group.posts.find(params[:id])
	end

	def new
		@post = @group.posts.new
	end

	def create
		@post = @group.posts.build(post_params)

		if @post.save
			redirect_to group_path(@group)
		else
			render :new
		end
	end

	def edit
		@post = @group.posts.find(params[:id])
	end

	def update
		@post = @group.posts.find(params[:id])

		if @post.update(post_params)
			redirect_to group_path(@group)
		else
			render :edit
		end
	end

	def destroy
		@post = @group.posts.find(params[:id])

		@post.destroy
		redirect_to group_path(@group)
	end
		

	private

	def find_group
		@group = Group.find(params[:group_id])
	end

	def post_params
		params.require(:post).permit(:title, :content)
	end
end
