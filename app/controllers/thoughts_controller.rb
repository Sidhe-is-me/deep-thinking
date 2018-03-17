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
  @emotion = @thought.build_emotion
  @thought.user_id = current_user.id

  end

  def edit
    find_thought
  end

# params["thought"]["emotion"]

  def create

    @thought = Thought.new(thought_params)
    @thought.user_id = current_user.id
    @thought.emotion = Emotion.new(thought_params["emotion_attributes"])
     #@emotion = @thought.build_emotion


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

# This code gives me ActiveRecord::AssociationTypeMismatch in ThoughtsController#create
  # def thought_params
  #   #add emotion_attributes
  #   params.require(:thought).permit(:date,:entry,:picture,:emotion_id,:user_id,emotion:[:name])
  # end


# THis code gives me a no method error for map
  def thought_params
    #add emotion_attributes
     params.require(:thought).permit(:date,:entry,:picture,:emotion_id,:user_id, :emotion_attributes => [:name]) #:emotion_attributes => [:id])
  end

# per TB try :emotion_attributes =>[:name]

end
