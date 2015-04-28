class MixinsController < ApplicationController
  before_action :set_mixin, only: [:show, :edit, :update, :destroy]

  # GET /mixins
  # GET /mixins.json
  def index
    @mixins = Mixin.all
  end

  # GET /mixins/1
  # GET /mixins/1.json
  def show
  end

  # GET /mixins/new
  def new
    @mixin = Mixin.new
  end

  # GET /mixins/1/edit
  def edit
  end

  # POST /mixins
  # POST /mixins.json
  def create
    @mixin = Mixin.new(mixin_params)

    respond_to do |format|
      if @mixin.save
        format.html { redirect_to @mixin, notice: 'Mixin was successfully created.' }
        format.json { render :show, status: :created, location: @mixin }
      else
        format.html { render :new }
        format.json { render json: @mixin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mixins/1
  # PATCH/PUT /mixins/1.json
  def update
    respond_to do |format|
      if @mixin.update(mixin_params)
        format.html { redirect_to @mixin, notice: 'Mixin was successfully updated.' }
        format.json { render :show, status: :ok, location: @mixin }
      else
        format.html { render :edit }
        format.json { render json: @mixin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mixins/1
  # DELETE /mixins/1.json
  def destroy
    @mixin.destroy
    respond_to do |format|
      format.html { redirect_to mixins_url, notice: 'Mixin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mixin
      @mixin = Mixin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mixin_params
      params.require(:mixin).permit(:name, :amount)
    end
end
