class ConversationsController < ApplicationController
  def create
    @conversation = Conversation.new(conversation_params)
    @prospecto = Prospecto.find(params[:prospecto_id])
    @conversation.prospecto = @prospecto
    @conversation.save

    redirect_to prospecto_path(@prospecto)
  end

  private

  def conversation_params
    params.require(:conversation).permit(:message)
  end
end
