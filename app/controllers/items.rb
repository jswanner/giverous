class Items < Application
  
  before do
    @user = User.get(params[:user_id])
  end

  # GET /users/:user_id/items/:id
  def show(id)
    @item_id = id.to_i
    @item = @user.items[@item_id]
    render
  end

  # GET /users/:user_id/items/new
  def new
    @item = Item.new
    render
  end

  # GET /users/:user_id/items/:id/edit
  def edit(id)
    @item_id = id.to_i
    @item = @user.items[@item_id]
    render
  end

  # POST /users/:user_id/items
  def create(item)
    @user.items << Item.new(item)
    @user.save
    redirect url(:user, @user.id)
  end

  # PUT /users/:user_id/items/:id
  def update(id, item)
    @item_id = id.to_i
    @user.items[@item_id] = Item.new(item)
    @user.save
    redirect url(:user_item, @user.id, @item_id)
  end

  # DELETE /users/:user_id/items/:id
  def destroy
    redirect url(:user, @user.id)
  end
end
