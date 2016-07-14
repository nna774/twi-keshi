class DeletesController < ApplicationController
  before_action :set_delete, only: [:show, :edit, :update, :destroy]

  # GET /deletes
  # GET /deletes.json
  def index
    @deletes = Delete.all
    
  end

  # GET /deletes/1
  # GET /deletes/1.json
  def show
  end

  # GET /deletes/new
  def new
    @delete = Delete.new
  end

  # GET /deletes/1/edit
  def edit
  end

  # POST /deletes
  # POST /deletes.json
  def create
    @delete = Delete.new(delete_params)

    respond_to do |format|
      if @delete.save
        format.html { redirect_to @delete, notice: 'Delete was successfully created.' }
        format.json { render :show, status: :created, location: @delete }
      else
        format.html { render :new }
        format.json { render json: @delete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deletes/1
  # PATCH/PUT /deletes/1.json
  def update
    respond_to do |format|
      if @delete.update(delete_params)
        format.html { redirect_to @delete, notice: 'Delete was successfully updated.' }
        format.json { render :show, status: :ok, location: @delete }
      else
        format.html { render :edit }
        format.json { render json: @delete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deletes/1
  # DELETE /deletes/1.json
  def destroy
    @delete.destroy
    respond_to do |format|
      format.html { redirect_to deletes_url, notice: 'Delete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delete
      @delete = Delete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delete_params
      params.fetch(:delete, {})
    end
end
