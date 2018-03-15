class ThoughtsController < ApplicationController

  def index
     #hack @user = User.find(session["warden.user.user.key"].first.first)
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

# params["thought"]["emotion"]

  def create

    @thought = Thought.new(thought_params)
    @thought.user_id = current_user.id
    @thought.emotion = Emotion.new(thought_params["emotion"].to_h)
    # @thought.emotion = Emotion.new(thought_params["emotion"])


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
    #add emotion_attributes
    params.require(:thought).permit(:date,:entry,:picture,:emotion_id,:user_id,emotion:[:name])
  end

# per TB try :emotion_attributes =>[:name]

end
