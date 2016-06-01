class PresidentsController < ApplicationController
  def index
    @presidents = President.all
  end

  def show
    @president = President.find(params[:id])
  end

  def new
    @president = President.new
  end

  def edit
    @president = President.find(params[:id])
  end

  def create
    @president = President.new(president_params)
    if @president.save
      redirect_to @president
    else
      render 'new'
    end
  end

  def update
    @president = President.find(params[:id])

    if @president.update(president_params)
      redirect_to @president
    else
      render 'edit'
    end
  end

def destroy
  @president = President.find(params[:id])
  @president.destroy

  redirect_to presidents_path
end

  private
  def president_params
    params.require(:president).permit(:name, :text)
  end

  #   @president = President.new(params.require(:president).permit(:name, :text)
  #   # render plain: params[:president].inspect
  #   @president.save
  #   redirect_to @president
  # end

end
