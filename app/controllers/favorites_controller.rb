class FavoritesController < ApplicationController

  def create
    #current_user.favorites.create(blog_id: params[:blog_id])
    @blog = Blog.find(params[:blog_id])
    favorite = current_user.favorites.create(blog_id: @blog.id)
    favorite.save
  end

  def destroy
    #current_user.favorites.find_by(id: params[:id]).destroy
    @blog = Blog.find(params[:blog_id])
    current_user.favorites.find_by(id: params[:id]).destroy
  end

end
