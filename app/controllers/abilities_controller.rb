class AbilitiesController < ApplicationController
  before_action :set_ability, only: [:show, :edit, :update, :destroy]

  # GET /abilities
  # GET /abilities.json
  def index

    @abilities = Ability.where(nil)
    filtering_params(params).each do |key, value|
    @abilities = @abilities.public_send(key, value) if value.present?
    end
    console
  end

  # GET /abilities/1
  # GET /abilities/1.json
  def show
  end

  # GET /abilities/new
  def new
    @ability = Ability.new
  end

  # GET /abilities/1/edit
  def edit
  end

  # POST /abilities
  # POST /abilities.json
  def create
    @ability = Ability.new(ability_params)

    respond_to do |format|
      if @ability.save
        format.html { redirect_to @ability, notice: 'Ability was successfully created.' }
        format.json { render :show, status: :created, location: @ability }
      else
        format.html { render :new }
        format.json { render json: @ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abilities/1
  # PATCH/PUT /abilities/1.json
  def update
    respond_to do |format|
      if @ability.update(ability_params)
        format.html { redirect_to @ability, notice: 'Ability was successfully updated.' }
        format.json { render :show, status: :ok, location: @ability }
      else
        format.html { render :edit }
        format.json { render json: @ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abilities/1
  # DELETE /abilities/1.json
  def destroy
    @ability.destroy
    respond_to do |format|
      format.html { redirect_to abilities_url, notice: 'Ability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ability
      @ability = Ability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ability_params
      params.require(:ability).permit(:name, :page, :pool, :cost, :category, :power, :kind)
    end

    # A list of the param names that can be used for filtering the Product list
    def filtering_params(params)
      params.slice(:pool, :keyword, :cost, :category, :kind, :power)
    end
end
