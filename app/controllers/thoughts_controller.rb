class ThoughtsController < ApplicationController

  def index
    if params[:user_id]
    @thoughts = User.find(params[:user_id]).thoughts
  else
    @thoughts = Thought.all
  end
end

  def show
    find_thought
  end

  def new
    @thought = Thought.new
    @emotions = Emotion.all
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

  def update
    find_thought
    @thought.update(thought_params)
    redirect_to thoughts_path(@thought)
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
    params.require(:thought).permit(:date,:entry,:picture,:emotion_id,:emotion_name)
  end

end
