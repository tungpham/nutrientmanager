class MealrecipesController < ApplicationController
  # GET /mealrecipes
  # GET /mealrecipes.json
  def index
    @mealrecipes = Mealrecipe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mealrecipes }
    end
  end

  # GET /mealrecipes/1
  # GET /mealrecipes/1.json
  def show
    @mealrecipe = Mealrecipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mealrecipe }
    end
  end

  # GET /mealrecipes/new
  # GET /mealrecipes/new.json
  def new
    @mealrecipe = Mealrecipe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mealrecipe }
    end
  end

  # GET /mealrecipes/1/edit
  def edit
    @mealrecipe = Mealrecipe.find(params[:id])
  end

  # POST /mealrecipes
  # POST /mealrecipes.json
  def create
    @mealrecipe = Mealrecipe.new(params[:mealrecipe])

    respond_to do |format|
      if @mealrecipe.save
        format.html { redirect_to @mealrecipe, notice: 'Mealrecipe was successfully created.' }
        format.json { render json: @mealrecipe, status: :created, location: @mealrecipe }
      else
        format.html { render action: "new" }
        format.json { render json: @mealrecipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mealrecipes/1
  # PUT /mealrecipes/1.json
  def update
    @mealrecipe = Mealrecipe.find(params[:id])

    respond_to do |format|
      if @mealrecipe.update_attributes(params[:mealrecipe])
        format.html { redirect_to @mealrecipe, notice: 'Mealrecipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mealrecipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mealrecipes/1
  # DELETE /mealrecipes/1.json
  def destroy
    @mealrecipe = Mealrecipe.find(params[:id])
    @mealrecipe.destroy

    respond_to do |format|
      format.html { redirect_to mealrecipes_url }
      format.json { head :no_content }
    end
  end
end
