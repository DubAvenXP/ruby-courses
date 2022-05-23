class PersonController
  def index
    @product = product.scoped
  end

  def show
    @product = product.find(params[:id])
  end

  def create
    @product = product.new(params[:product])
  end

  def update
    @product = product.find(params[:id])
  end

  def edit
    @product = product.find(params[:id])
  end

  def destroy
    product = product.find(params[:id])
  end
end
