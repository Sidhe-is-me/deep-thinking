class ThoughtsController < ApplicationController

  def index
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
    @emotion = @thought.build_emotion
    @thought.user_id = current_user.id
  end

  def edit
    find_thought
  end


  def create
    @thought = Thought.new(thought_params)
    @thought.user_id = current_user.id
    @thought.emotion = Emotion.find_or_create_by(thought_params["emotion_attributes"])

      if @thought.save
        redirect_to thoughts_path(@thought)
    else
        render :new
    end
  end

  def update
    find_thought
    @thought.update(thought_params)
    @thought.emotion = Emotion.find_or_create_by(thought_params["emotion_attributes"])
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
    #add emotion_attributes
     params.require(:thought).permit(:date,:entry,:picture,:emotion_id,:user_id, :emotion_attributes => [:name]) #:emotion_attributes => [:id])
  end



end
