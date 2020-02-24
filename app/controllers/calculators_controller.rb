class CalculatorsController < ApplicationController
    def index
    end
  
    def new
      @result = Calculator.send(params[:operation], *[params[:a], params[:b]])
      render :index
    end

    def calc 
      @res = Calculator.multiply(*params[:c].split)
      render :index
    end
end
