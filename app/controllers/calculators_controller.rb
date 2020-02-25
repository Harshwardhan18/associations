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

    def mean
      @resM = Calculator.mean(*params[:m].split)
      render :index
    end

    def median
      @resMe = Calculator.median(*params[:me].split)
      render :index
    end

    def mode
      @resMo = Calculator.mode(*params[:mo].split)
      render :index
    end
end
