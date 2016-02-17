class MessagesController < ApplicationController

  before_action :find_user, except: [:index]

  def index
    @messages = Message.order('created_at DESC')
  end


  def create
    @message = Message.new message_params
    @message.user = @current_user
    @message.save
    render json: @message
  end

  private
  def message_params
    params.permit(:message)
  end

end