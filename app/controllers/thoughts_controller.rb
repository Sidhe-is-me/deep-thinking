class ThoughtsController < ApplicationController

  def index
     # @user = User.find(session["warden.user.user.key"].first.first)
     @user = current_user

    if @user
    @thoughts = @user.thoughts.all
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
    @thought.user_id = current_user.id
  end

  def edit
    find_thought
  end

  def create
    @thought = Thought.new(thought_params)
    @thought.user_id = current_user.id

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
    params.require(:thought).permit(:date,:entry,:picture,:emotion_id,:emotion_name,:user_id)
  end

end
