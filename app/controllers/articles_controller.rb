class ArticlesController < ApplicationController
  def index
    # Sleeper.set(wait: 10.seconds).perform_later("hi")
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      Resque.enqueue(Sleeper)
      flash[:notice] = "Article was created."
      redirect_to articles_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to articles_path
    else
      redirect_to :back
    end
  end

  private

  def article_params
    params.require(:article).permit(:name, :description)
  end
end
