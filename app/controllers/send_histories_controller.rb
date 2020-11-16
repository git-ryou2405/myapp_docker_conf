class SendHistoriesController < ApplicationController
  before_action :set_send_history, only: [:show, :edit, :update, :destroy]

  # GET /send_histories
  # GET /send_histories.json
  def index
    @send_histories = SendHistory.all
  end

  # GET /send_histories/1
  # GET /send_histories/1.json
  def show
  end

  # GET /send_histories/new
  def new
    @send_history = SendHistory.new
  end

  # GET /send_histories/1/edit
  def edit
  end

  # POST /send_histories
  # POST /send_histories.json
  def create
    @send_history = SendHistory.new(send_history_params)

    respond_to do |format|
      if @send_history.save
        format.html { redirect_to @send_history, notice: 'Send history was successfully created.' }
        format.json { render :show, status: :created, location: @send_history }
      else
        format.html { render :new }
        format.json { render json: @send_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /send_histories/1
  # PATCH/PUT /send_histories/1.json
  def update
    respond_to do |format|
      if @send_history.update(send_history_params)
        format.html { redirect_to @send_history, notice: 'Send history was successfully updated.' }
        format.json { render :show, status: :ok, location: @send_history }
      else
        format.html { render :edit }
        format.json { render json: @send_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /send_histories/1
  # DELETE /send_histories/1.json
  def destroy
    @send_history.destroy
    respond_to do |format|
      format.html { redirect_to send_histories_url, notice: 'Send history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send_history
      @send_history = SendHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def send_history_params
      params.require(:send_history).permit(:from_user_id, :to_user_id, :amount, :send_type)
    end
end
