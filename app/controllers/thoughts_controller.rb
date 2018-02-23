class ThoughtsController < ApplicationController

  def index
  end

  def new
    @thought = Thought.new
  end

  def create
    @thought = Thought.new(thought_params)
      if @thought.save
        redirect_to_thought_path(@thought)
    else
        render :new
    end
  end

  def show
  end

  def edit
  end

  def delete
  end


  private

  def thought_params
    params.require(:thought).permit(:date,:description,:picture)
  end

end
