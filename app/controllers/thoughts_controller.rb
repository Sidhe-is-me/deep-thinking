class ThoughtsController < ApplicationController

  def index
    @thoughts = Thought.all
  end

  def show
  end

  def new
    @thought = Thought.new
  end

  def edit
    find_thought
  end

  def create
    @thought = Thought.new(thought_params)
      if @thought.save
        redirect_to thoughts_path(@thought)
    else
        render :new
    end
  end

  def destroy
    find_thought
    @thought.delete
    redirect_to thoughts_path(@thought)
  end


  private

  def find_thought
    @thought = Thought.find(params[:id])
  end

  def thought_params
    params.require(:thought).permit(:date,:entry,:picture)
  end

end
