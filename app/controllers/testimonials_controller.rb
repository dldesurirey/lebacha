class TestimonialsController < ApplicationController
  before_action :set_testimonial, only: [:show, :edit, :update, :destroy]

  # GET /testimonials
  def index
    @testimonials = Testimonial.all
  end

  # GET /testimonials/new
  def new
    @testimonial = Testimonial.new
  end

  # GET /testimonials/1/edit
  def edit; end

  # POST /testimonials
  def create
    @testimonial = Testimonial.new(testimonial_params)

    if @testimonial.save
      redirect_to testimonials_path, notice: 'Témoignage publié avec succès 🤘'
    else
      render :new
    end
  end

  # PATCH/PUT /testimonials/1
  def update
    if @testimonial.update(testimonial_params)
      redirect_to testimonials_path, notice: 'Témoignage mis à jour 👌'
    else
      render :edit
    end
  end

  # DELETE /testimonials/1
  def destroy
    @testimonial.destroy
    redirect_to testimonials_path, notice: 'Témoignage supprimé 😱'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def testimonial_params
      params.require(:testimonial).permit(:name, :date, :content)
    end
end
