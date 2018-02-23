class EmotionsController < ApplicationController

    def index
      @emotions = Emotion.all
    end

    def show
      find_emotion
    end

    def new
      @emotion = Emotion.new
    end

    def edit
      find_emotion
    end

    def create

        if @emotion.save
          # I have no idea why this works for thought but not emotion
          redirect_to emotions_path(@emotion)
      else
          render :new
      end
    end

    def destroy
      find_emotion
      @emotion.delete
      redirect_to emotions_path(@emotion)
    end


    private

    def find_emotion
      @emotion = Emotion.find(params[:id])
    end

    def emotion_params
      params.require(:emotion).permit(:name)
    end
end