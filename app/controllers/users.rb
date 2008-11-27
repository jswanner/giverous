class Users < Application
  
  # GET /users
  def index
    @users = User.all
    display @users
  end

  # GET /users/:id
  def show(id)
    @user = User.get(id)
    display @user
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
  def create(user)
    @user = User.new(user)
    @user.save
    redirect url(:user, @user.id)
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
