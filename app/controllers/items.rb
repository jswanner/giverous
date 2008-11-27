class Items < Application
  
  before do
    @user = User.get(params[:user_id])
  end

  # GET /users/:user_id/items/:id
  def show(id)
    @item = @user.items[id.to_i]
    render
  end

  # GET /users/:user_id/items/new
  def new
    @item = Item.new
    render
  end

  # GET /users/:user_id/items/:id/edit
  def edit
    render
  end

  # POST /users/:user_id/items
  def create(item)
    @user.items << Item.new(item)
    @user.save
    redirect url(:user, @user.id)
  end

  # PUT /users/:user_id/items/:id
  def update
    render
  end

  # DELETE /users/:user_id/items/:id
  def destroy
    render
  end
end
