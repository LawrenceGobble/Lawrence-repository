class CommentsController < ApplicationController


def create  
@test = Test.find(params[:test_id])
 # @comment = @test.comments.create(params[:comment])    
 @comment = @test.comments.create!(comment_params) 
 redirect_to test_path(@test) 
end  

# Never trust parameters from the scary internet, only allow the white list through.
 def comment_params
  params.require(:comment).permit(:commenter, :body)
 end

end
