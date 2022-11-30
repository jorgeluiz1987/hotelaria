class HotelController < ApplicationController


    def new
        @hotel = Hotel.new
      end

    def create
        @hotel = Hotel.new(hotel_params)
    
        if @hotel.save
          redirect_to @hotel
        else
          render :new, status: :unprocessable_entity
        end
      end

      private
      def hotel_params
        params.require(:hotel).permit(:name, :adress, :rooms, :stars, :status)
      end
  end
    