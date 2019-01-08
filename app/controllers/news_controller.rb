class NewsController < ApplicationController
    before_action :set_news, only: [:show, :download]

    def index
      @events = news.order('created_at DESC')
    end

    def new
      @event = news.new
    end

    def show
    end

    def create
      @event = news.new(book_params)
      if @event.save
        redirect_to news_path
      else
        render :new
      end
    end

    private

    def news_params
      params.require(:event).permit(:title, :description, :image, :organisator)
    end

    def set_book
      @event = news.find(params[:id])
    end

  def add
  end

  def edit
  end
end
