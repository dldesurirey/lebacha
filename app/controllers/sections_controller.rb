class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy]
  before_action :set_positions, only: [:new, :edit, :create]

  # GET /sections
  def index
    @sections = Section.ordered
  end

  # GET /sections/1
  def show
  end

  # GET /sections/new
  def new
    @section = Section.new
    @section.features.build
  end

  # GET /sections/1/edit
  def edit; end

  # POST /sections
  def create
    @section = Section.new(section_params)

    if @section.save
      redirect_to sections_path, notice: 'Section publiée avec succès 🤘'
    else
      render :new
    end
  end

  # PATCH/PUT /sections/1
  def update
    if @section.update(section_params)
      redirect_to sections_path, notice: 'Section mise à jour 👌'
    else
      render :edit
    end
  end

  # DELETE /sections/1
  def destroy
    @section.destroy
    redirect_to sections_url, notice: 'Section supprimée 😱'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_section
    @section = Section.find(params[:id])
  end

  def set_positions
    @positions = (1..Section.last.position + 1).to_a
  end

  # Only allow a trusted parameter "white list" through.
  def section_params
    params.require(:section).permit(
      :title, :text, :position,
      photos: [],
      features_attributes: [:id, :text, :_destroy]
    )
  end
end
