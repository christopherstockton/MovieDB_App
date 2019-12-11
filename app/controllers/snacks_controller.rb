class SnacksController < ApplicationController
    http_basic_authenticate_with name: "cstockton", password: "secret123", except: [:index, :show, :new]
    
    def index
        @snacks = Snack.all
    end
    
    def show
        @snack = Snack.find(params[:id])
    end
    
    def new
        @snack = Snack.new
    end

    def edit
        @snack = Snack.find(params[:id])
    end
    
    def create
        @snack = Snack.new(snack_params)

        if @snack.save
        redirect_to @snack
        else
            render 'new'
        end
    end

    def update
        @snack = Snack.find(params[:id])
       
        if @snack.update(snack_params)
          redirect_to @snack
        else
          render 'edit'
        end
    end

    def destroy
        @snack = Snack.find(params[:id])
        @snack.destroy
     
        redirect_to snacks_path
    end

    private
        def snack_params
            params.require(:snack).permit(:snack_name, :snack_brand, :snack_description, :snack_cost)
        end
end
