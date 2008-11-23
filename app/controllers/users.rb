class Users < Application
  
  # GET /users
  def index
    @users = User.all
    display @users
  end

  # GET /users/:id
  def show(id)
    @user = User.get(id)
    @items = Item.by_user :key => id
    render
  end

  # GET /users/new
  def new
    render
  end

  # GET /users/:id/edit
  def edit
    render
  end

  # GET /users/:id/delete
  def delete
    render
  end

  # POST /users
  def create
    render
  end

  # PUT /users/:id
  def update
    render
  end

  # DELETE /users/:id
  def destroy
    render
  end
end
