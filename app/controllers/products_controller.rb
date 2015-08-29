class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @category_id = params[:category][:category_id] unless params[:category].blank?
    @products = Product.all
    @products = @products.with_category_id(@category_id) unless @category_id.blank?
    @products = @products.paginate(page: params[:page], per_page: 20)
    @categories = Category.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_to_basket
    @product = Product.find(params[:product_id])
    amount = params[:product][:amount].to_i
    session[:basket] ||= []
    unless amount.blank? || amount == 0
      session[:basket].delete_if {|hash| hash["id"] == params[:product_id].to_i }
      session[:basket] << {id: @product.id, amount: amount} unless session[:basket].include? @product.id
      flash[:notice] = "Product added to your basket"
    else
      flash[:error] = "No amount selected"
    end
    redirect_to :back
  end

  def remove_from_basket
    session[:basket].delete_if {|hash| hash["id"] == params[:product_id].to_i } unless session[:basket].blank?
    redirect_to :basket
  end

  def basket
    @products = []
    unless session[:basket].blank?
      session[:basket].each do |p|
        product = Product.find(p["id"])
        product.amount = p["amount"].to_i
        @products << product
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
