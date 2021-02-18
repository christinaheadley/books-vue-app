class Api::BooksController < ApplicationController

  def index
    @books = Book.all
    render "index.json.jb"
  end

  def create
    @book = Book.new(
      title: params[:title],
      author: params[:author],
      genre: params[:genre],
    )
    if @book.save
      render "show.json.jb"
    else render json: {message: "error"}
    end
  end

  def show
    @book = Book.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.title = params[:title] || @book.title
    @book.author = params[:author] || @book.author
    @book.genre = params[:genre] || @book.genre
    if @book.save
      render "show.json.jb"
    else render "error"
    end
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    render json: {message: "book prob destroyed- check console or db"}
    
  end

end
