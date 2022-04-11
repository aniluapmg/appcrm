class ChatsController < ApplicationController
  before_action :get_prospect
  before_action :set_chat, only: %i[ show edit update destroy ]

  # GET /chats or /chats.json
  def index
    @chats = @prospect.chats
  end

  # GET /chats/1 or /chats/1.json
  def show
  end

  # GET /chats/new
  def new
    @chat = @prospect.chats.build
  end

  # GET /chats/1/edit
  def edit
  end

  # POST /chats or /chats.json
  def create
    @chat = @prospect.chats.build(chat_params)

    respond_to do |format|
      if @chat.save
        format.html { redirect_to prospect_chats_path(@prospect), notice: "Chat was successfully created." }
        format.json { render :show, status: :created, location: @chat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chats/1 or /chats/1.json
  def update
    respond_to do |format|
      if @chat.update(chat_params)
        format.html { redirect_to prospect_chat_path(@prospect), notice: "Chat was successfully updated." }
        format.json { render :show, status: :ok, location: @chat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chats/1 or /chats/1.json
  def destroy
    @chat.destroy

    respond_to do |format|
      format.html { redirect_to prospect_chats_path(@prospect), notice: "Chat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def get_prospect
    @prospect = Prospect.find(params[:prospect_id])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_chat
      @chat = @prospect.chats.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chat_params
      params.require(:chat).permit(:content, :prospect_id)
    end
end
