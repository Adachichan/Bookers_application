class BooksController < ApplicationController

  def new
    @book = Book.new
    render :index
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end
end
