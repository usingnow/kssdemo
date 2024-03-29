class IdentitiesController < ApplicationController
  before_action :set_identity, only: [:show, :edit, :update, :destroy]

  # GET /identities
  # GET /identities.json
  def index
    @identities = Identity.order(:name)
  end

  # GET /identities/1
  # GET /identities/1.json
  def show
  end

  # GET /identities/new
  def new
    @identity = Identity.new
  end

  # GET /identities/1/edit
  def edit
  end

  # POST /identities
  # POST /identities.json
  def create
    @identity = Identity.new(identity_params)

    respond_to do |format|
      if @identity.save
        format.html { redirect_to identities_url, notice: "Identity #{@identity.name} was successfully created." }
        format.json { render action: 'show', status: :created, location: @identity }
      else
        format.html { render action: 'new' }
        format.json { render json: @identity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /identities/1
  # PATCH/PUT /identities/1.json
  def update
    respond_to do |format|
      if @identity.update(identity_params)
        format.html { redirect_to identities_url, notice: "Identity #{@identity.name}was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @identity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /identities/1
  # DELETE /identities/1.json
  def destroy
    @identity.destroy
    respond_to do |format|
      format.html { redirect_to identities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identity
      @identity = Identity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def identity_params
      params.require(:identity).permit(:name, :password, :password_confirmation)
    end
end
