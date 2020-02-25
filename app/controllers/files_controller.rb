class FilesController < ApplicationController
    def index
        @file = File.read('app/temp/test.txt')
    end

    def editFile
        File.open('app/temp/test.txt','w') {|file| file.write(params[:data])}
        @file = File.read('app/temp/test.txt')
        render :index
    end
end
