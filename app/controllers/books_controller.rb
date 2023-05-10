class BooksController < ApplicationController

  def new
    @book = Book.new
    render :index
  end

  def create
    @book = Book.new(book_params)
    save_result = @book.save
    if save_result
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end

  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    update_result = @book.update(book_params)

  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
