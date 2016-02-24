class MessagesController < ApplicationController

  before_action :find_user #, except: [:index]

  def index
    @messages = Message.order('created_at DESC')
  end


  def create
    @message = Message.new message_params
    @message.user = @current_user
    @message.save
  end

  def show
    @message = Message.find params[:id]
  end

  def update
    @message = Message.find params[:id]
    @message.attributes = message_params
    @message.save
  end

  def destroy
    @message = Message.find params[:id]
    @message.destroy
  end

  private
  def message_params
    params.permit(:message)
  end

end