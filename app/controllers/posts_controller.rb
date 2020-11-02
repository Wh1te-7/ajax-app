class Postscontroller < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(memo:params[:memo]）
    redirect_to action: :index
  end
end