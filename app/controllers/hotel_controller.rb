class HotelController < ApplicationController


    def new 
      puts '1'
      puts params
     
        @hotel = Hotel.new
      end

    def create
      puts '2'
        @hotel = Hotel.new(hotel_params)
    
        if @hotel.save
          redirect_to :new
        else
          render :new
        end
      end

      private
      def hotel_params
        params.require(:hotel).permit(:name, :adress, :rooms, :stars, :status)
      end
  end
    