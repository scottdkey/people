class FriendsController < ApplicationController

    def index
      @friends = Friend.all
    end

    def show
      @friend = Friend.find(params[:id])
    end

    def new
      @friend = Friend.new
      render partial: "form"
    end

    def edit
      @friend = Friend.find(params[:id])
      render partial: "form"
    end

    def update
      @friend = Friend.find(params[:id])
      if @friend.update(friend_params)
        redirect_to friends_path
      else
        render :new
      end
    end

    def destroy
      @friend = Friend.find(params[:id]).destroy
      redirect_to friends_path
    end

    def create
      @friend = Friend.new(friend_params)
      if @friend.save
        redirect_to friends_path
      else
        render :new
      end
    end

    private

    def friend_params
      params.require(:friend).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :birth, :living)
    end




  end
