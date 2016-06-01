class PresidentsController < ApplicationController
  def show
    @president = President.find(params[:id])
  end

  def new
  end

  def create
@president = President.new(president_params)
@president.save
redirect_to @president
end

private
def article_params
  params.require(:article).permit(:name, :text)
end

  #   @president = President.new(params.require(:president).permit(:name, :text)
  #   # render plain: params[:president].inspect
  #   @president.save
  #   redirect_to @president
  # end

end
