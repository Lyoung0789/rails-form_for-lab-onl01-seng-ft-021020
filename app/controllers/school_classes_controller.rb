class SchoolClassesController < ApplicationController
    def new 
        @schoolclass = SchoolClass.new
    end 

    def create
        # byebug
        @schoolclass = SchoolClass.new(post_params(:title, :room_number))
        @schoolclass.save
        redirect_to @schoolclass

    end 

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end 

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end 

    def update
        @schoolclass = SchoolClass.find(params[:id])
        @schoolclass.update(post_params(:title, :room_number))
        redirect_to @schoolclass

    end 

    private 
    def post_params(*args)
        params.require(:school_class).permit(*args)
    end 
end 