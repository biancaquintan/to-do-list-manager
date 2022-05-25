class Api::V1::ListManagersController < ApplicationController
  before_action :set_item, only: [:remove_item, :update_item_status]
  
  # GET ToDo list from a user
  def list_view
    @items = User.find(params[:id]).to_do_list.items

    render json: @items.page(page).per(per_page).order('status ASC')
  end
  
  # POST new item to ToDo list
  def add_item
    @item = Item.new(item_params)
    if @item.save
      render json: { status: 'SUCCESS', message:'Saved item', data: @item }, status: :ok
    else
      render json: { status: 'ERROR', message:'Item not saved', data: @item.errors }, status: :unprocessable_entity
    end
  end  

  # DELETE an item from ToDo list
  def remove_item
    @item = Item.find(params[:id])
    @item.destroy
    render json: { status: 'SUCCESS', message:'Removed item', data: @item }, status: :ok
  end
    
  # PUT/PATCH status item on ToDo list 
  def update_item_status
    new_status = params[:status]

    if @item.update(status: new_status)
      render json: { status: 'SUCCESS', message: 'Updated item', data: @item }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Item not updated', data: @item.errors }, status: :unprocessable_entity
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :status, :to_do_list_id)
  end

end
