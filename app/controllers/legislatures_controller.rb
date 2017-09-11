class LegislaturesController < ApplicationController
	
	before_action :set_legislature, only: [:show,:edit,:update,:destroy, :upvote]
  before_filter :require_permission, only: :edit && :destroy

  def index
  	@legislatures = Legislature.all
  end

  def show
  end

  def edit

  end

  def update
  	if @legislature.update(legislature_params)
  		redirect_to @legislature
  	else
  		render :edit
  	end
  end

  def new
  	@legislature = current_user.legislatures.build
  end

  def create
  	@legislature = current_user.legislatures.build(legislature_params)

  	if @legislature.save
  		redirect_to @legislature
  	else
  		render :new
  	end
  end

  def destroy
    @legislature.destroy
    redirect_to(:back)
  end

  def upvote
    @legislature.upvote_by current_user
    redirect_to :back
  end

  def require_permission
  if current_user != Legislature.find(params[:id]).user
    redirect_to root_path, :notice => "Only Post creator can edit it."
    #Or do something else here
  end
end
  private 

  def set_legislature
  	@legislature = Legislature.find(params[:id])
  end

  def legislature_params
  	params.require(:legislature).permit(:title,:content)
  end
end
