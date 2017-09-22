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

  def show
    @book = Book.find(params[:id])
  end

    def edit
    @book = Book.find(params[:id])
  end 

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to(book_path, notice: "Книгата е успешно променена!")
    else 
      render 'edit'
    end 
  end

  def destroy
  	@book = Book.find(params[:id])

  	@book.destroy

  	redirect_to books_path, notice: "Книгата е изтрита!"
  end

 

  private
  
  def book_params
  	params.require(:book).permit(:name, :author, :desc,  :image, :attachment )
  end

end
