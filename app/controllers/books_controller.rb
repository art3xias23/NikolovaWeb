class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def new
  	@book = Book.new
  end 

  def create
  	@book = Book.new(book_params)

  	if @book.save
  		redirect_to books_path, notice: "Kнигата '#{@book.name}' е качена успешно!"
  	else
  		render 'new'
  	end
  end

  def destroy
  	@book = Book.find(params[:id])

  	@book.destroy

  	redirect_to books_path, notice: "Книгата е изтрита!"
  end

  private
  
  def book_params
  	params.require(:book).permit(:name, :author, :image, :attachment)
  end

end
