class EmotionsController < ApplicationController

    def index
      # @emotions = Emotion.all
    end

    def show
      # find_emotion
      @emotion = Emotion.find(params[:id])
      #  if params[:thought_id]
      #  @thought = Thought.find_by(id: params[:thought_id])
      #  binding.pry
      #   @emotion = @thought.emotion.find(params[:emotion_id])
      #    if @emotion.nil?
      #     redirect_to thought_emotion_path(@thought), alert: "Emotion not found"
      #   end
      #  else
      #    @emotion = Emotion.find(params[:id])
      # end
    end

    # def new
    #   @emotion = Emotion.new
    # end
    #
    # def edit
    #   find_emotion
    # end
    #
    # def create
    #     @emotion = Emotion.new(emotion_params)
    #     if @emotion.save
    #        redirect_to emotions_path(@emotion)
    #   else
    #       render :new
    #   end
    # end
    #
    # def update
    #   find_emotion
    #   @emotion.update(emotion_params)
    #   redirect_to emotions_path(@emotion)
    # end
    #
    # def destroy
    #   find_emotion
    #   @emotion.delete
    #   redirect_to emotions_path(@emotion)
    # end


    private

    def find_emotion
      @emotion = Emotion.find(params[:id])
    end

    def emotion_params
      params.require(:emotion).permit(:name)
    end
end
