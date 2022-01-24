class  MsgthreadsController < ApplicationController
        def index
            @msgthreads = Msgthread.all
            render json: @msgthreads
        end
      
        def show
            @msgthread = Msgthread.find(params[:id])
            render json: @msgthread
        end
      
        def create
            @msgthread = Msgthread.create(thread_params)
            render json: @msgthread
        end
      
        def update
          @msgthread = Msgthread.find(params[:id])
          @msgthread.update(msgthread_params)
          render json: @msgthread
        end
      
        def destroy
            @msgthread = Msgthread.destroy(params[:id])
            render json: @msgthread
        end
end
          
private   
    def msgthread_params
        params.require(:msgthread).permit(:id, :title, :user_id)
    end
      
