class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render :index
  end

  def new


    @review = Review.new

    render :new
  end

  def create
    @product = Product.find(:product_id)
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    @product = @review.product
    render :edit
  end

  def show
    @review = Review.find(params[:id])
    @product = @review.product
    render :show
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to product_path(@review.product)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product)
  end

  private

  def review_params
    params.require(:review).permit(:author, :content_body, :rating, :product_id)
  end
end
