class StudentsController < ApplicationController

    def new 
    end 

    def create 
        @data = params[:form_data]
        if Student.create(name: @data[:name], branch: @data[:branch])
            redirect_to "/students/show"
        else 
            render html: "some error has occured"
        end
    end

    def show 
        # render html: 'Show'
        @students = Student.all
    end

    def destroy 
        data = params[:id]

        s = Student.find_by(name: data)
        s.destroy
        p "8888888888888"
        p data
        p "8888888888888"

        redirect_to "/students/show"
    end
end
