class ArticlesController < ApplicationController

	#before_filter :require_login, only: [:new, :create, :update, :edit, :destroy]
	#before_filter :require_login :except [:new, :create, :update, :edit, :destroy]

	def index 
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])

		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params[:article])
		@article.save
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_url		
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		@article.update_attributes(params[:article])

		flash.notice = "Article '#{@article.title}' is update!"

		redirect_to article_path(@article)
	end
end
