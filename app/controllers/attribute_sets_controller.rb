class AttributeSetsController < ApplicationController
  before_action :set_attribute_set, only: [:show, :edit, :update, :destroy]

  # GET /attribute_sets
  # GET /attribute_sets.json
  def index
    @attribute_sets = AttributeSet.all
    render json: @attribute_sets
  end

  # GET /attribute_sets/1
  # GET /attribute_sets/1.json
  def show
    render json: @attribute_set
  end

  # GET /attribute_sets/new
  def new
    @attribute_set = AttributeSet.new
  end

  # GET /attribute_sets/1/edit
  def edit
  end

  # POST /attribute_sets
  # POST /attribute_sets.json
  def create
    @attribute_set = AttributeSet.new(attribute_set_params)

    respond_to do |format|
      if @attribute_set.save
        format.html { redirect_to @attribute_set, notice: 'Attribute set was successfully created.' }
        format.json { render :show, status: :created, location: @attribute_set }
      else
        format.html { render :new }
        format.json { render json: @attribute_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_sets/1
  # PATCH/PUT /attribute_sets/1.json
  def update
    respond_to do |format|
      if @attribute_set.update(attribute_set_params)
        format.html { redirect_to @attribute_set, notice: 'Attribute set was successfully updated.' }
        format.json { render :show, status: :ok, location: @attribute_set }
      else
        format.html { render :edit }
        format.json { render json: @attribute_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_sets/1
  # DELETE /attribute_sets/1.json
  def destroy
    @attribute_set.destroy
    respond_to do |format|
      format.html { redirect_to attribute_sets_url, notice: 'Attribute set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_set
      @attribute_set = AttributeSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_set_params
      params.require(:attribute_set).permit(:name, :legend_img_filename, :string)
    end
end
