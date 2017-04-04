class CommentsController < ApplicationController

	def new
		@pic = Pic.find_by_id params[:pic_id]
		@comment = @pic.comments.build
	end
				
	def create
		@pic = Pic.find(params[:pic_id])
		@comment = @pic.comments.create(params[:comment].permit(:name, :body))

		redirect_to pic_path(@pic)
	end		

	def destroy
		@pic = Pic.find(params[:pic_id])
		@comment = @pic.comments.find(params[:id])
		@comment.destroy

		redirect_to pic_path(@pic)
	end	
end	
