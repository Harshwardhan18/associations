class BooksController < ApplicationController
    def create
        @author = Author.find(params[:author_id])
        @book = @author.books.new(book_params)
        if(@book.save)
            redirect_to author_path(@author)
        else
            render 'show'
        end
    end

    private def book_params
        params.require(:book).permit(:title, :content)
        
    end
end