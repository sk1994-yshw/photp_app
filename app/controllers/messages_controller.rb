class MessagesController < ApplicationController
  def new
    @user = current_user
    @post = Post.find_by(id: params[:post_id])
    @message = Message.new
  end
  
  def create
    @user = current_user
    @post = Post.find_by(id: params[:post_id])
    @message = @post.messages.new(message_params)
    if @message.save
      redirect_to post_path(@post.id)
    else
      render 'new'
    end
  end

  def destroy
  end
  
  private

    def message_params
      params.require(:message).permit(:post_id, :user_id, :comment)
    end
    
end
