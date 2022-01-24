class MessagesController < ApplicationController
    def index
        @messages = Message.all
        render json: @messages
    end
    
    def show
        @message = Message.find(params[:id])
        render json: @message
    end
    
    def create
        @messages = Message.create(message_params)
        render json: @message
    end
    
    def update
      @message = Message.find(params[:id])
      @message.update(message_params)
      render json: @message
    end
    
    def destroy
        @message = Message.destroy(params[:id])
        render json: @message
    end
end
    
    private
    
def message_params
    params.require(:message).permit(:id, :message, :user_id, :thread_id, :isDeleted)
end
    
