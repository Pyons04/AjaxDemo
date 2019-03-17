require 'pry'
class ArticlesController < ApplicationController   
  def new
    @article = Article.new
  end

  def ajax_department

    case params[:id].to_i
     when 1 then
       @departments = Article::MEIJI_UNI
     when 2 then
       @departments = Article::RIKKYO_UNI
     when 3 then
       @departments =Article::AOYAMA_UNI
     when 4 then 
       @departments = Article::HOUSEI_UNI
     when 5 then
       @departments = Article::CHUO_UNI
     when 6 then
       @departments = Article::GAKUSHU_UNI
     else
       @departments = "invaild input"
     end

     respond_to do |format|
      format.js
     end
  end

  def index
    @articles = Article.all
  end

  def show 
    # this is new comment.
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save then
      redirect_to @article
    else
      render 'new'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
