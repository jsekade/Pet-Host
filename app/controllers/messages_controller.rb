class MessagesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @users = current_user.sent_messages.distinct.map(&:receiver)
    @users += current_user.received_messages.distinct.map(&:sender)
    @users = @users.uniq
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    #Get user for "Message with..."
    @user = User.find_by id: params[:id]
    @users = current_user.sent_messages.distinct.map(&:receiver)
    @users += current_user.received_messages.distinct.map(&:sender)
    @users = @users.uniq

    #Get messages from users sorted by date
    m1 = current_user.sent_messages.where(receiver_id: params[:id])
    m2 = current_user.received_messages.where(sender_id: params[:id])
    @messages_user = m1 + m2
    @messages_order = @messages_user.sort_by &:created_at

    #Create new message
    @message =  current_user.messages.build
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    
    @message = Message.new(body: params[:message][:body], sender_id: current_user.id, receiver_id: params[:message][:receiver_id])
    
    #@message = current_user.messages.build(message_params)
    #@message.save
    #respond_with { @message }

    respond_to do |format|
      if @message.save
        format.html { redirect_to messages_user_path(current_user), notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    def set_user
      @user = User.find_by(id: params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:body, :user_id)
    end
end
