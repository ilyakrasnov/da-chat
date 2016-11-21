class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to :root
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :user)
  end
end
