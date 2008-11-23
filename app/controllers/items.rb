class Items < Application
  
  # GET /users/soandso/items
  def index
    render
  end

  # GET /users/soandso/items/:id
  def show(id)
    @item = Item.get(id)
    render
  end

  # GET /users/soandso/items/new
  def new
    render
  end

  # GET /users/soandso/items/:id/edit
  def edit
    render
  end

  # GET /users/soandso/items/:id/delete
  def delete
    render
  end

  # POST /users/soandso/items
  def create
    render
  end

  # PUT /users/soandso/items/:id
  def update
    render
  end

  # DELETE /users/soandso/items/:id
  def destroy
    render
  end
end
