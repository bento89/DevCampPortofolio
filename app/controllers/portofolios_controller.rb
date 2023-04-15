class PortofoliosController < ApplicationController
    def index
        @portofolio_items = Portofolio.all
    end

    def new 
        @portofolio_item = Portofolio.new
    end

    def create
        @portofolio_item = Portofolio.new(params.require(:portofolio).permit(:title,:subtitle, :body))
    
        respond_to do |format|
          if @portofolio_item.save
            format.html { redirect_to portofolios_path(@portofolio_item), notice: "Portofolio was successfully created." }
            format.json { render :show, status: :created, location: @portofolio_item }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @portofolio_item.errors, status: :unprocessable_entity }
          end
        end
      end
end
