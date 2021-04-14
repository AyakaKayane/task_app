class UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.permit(:id ,:title ,:start ,:end ,:allday ,:update ,:memo))
    if @user.save
      flash[:notice] = "ユーザーを新規登録しました"
      redirect_to :user_index
    else
      render "new"
    end
  end

  
  def show
    @user = User.find(params[:id])

  end

  def edit
    @users = User.find(params[:id])
    
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:id ,:title ,:start ,:end ,:allday ,:update,:memo))
      flash[:notice] = "スケジュールIDが「#{@user.id}」の情報を更新しました"
      redirect_to :user_index
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
      @user.destroy
      flash[:notice] = "スケジュールを削除しました"
      redirect_to :user_index
  end
end

