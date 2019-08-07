class ChatsController < ApplicationController
  def index
    @chats =Chat.all
  end
def show
  @chats =Chat.find(params[:id])
end
def new
  if params[:back]
    @chats=Chat.new(chat_params)
  else
  @chats=Chat.new
  end
end
def create
  @chats =Chat.new(chat_params)
  if( @chats.save)
    redirect_to chats_path
  else
    render :new
  end
end

def destroy
  @chats =Chat.find(params[:id])
  @chats.destroy
  redirect_to chats_path
end

def edit
  @chats=Chat.find(params[:id])
end
def update
  @chats =Chat.find(params[:id])
  if(@chats.update(chat_params))
    redirect_to chats_path
  else
    render :edit
  end
end
def confirm
  @chats=Chat.new(chat_params)
  render :new if @chats.invalid?
end

private
def chat_params
  params.require(:chat).permit(:username, :mail)

end

end
