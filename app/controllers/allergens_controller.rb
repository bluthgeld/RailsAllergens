class AllergensController < ApplicationController

      def index
        @allergens = Allergen.all
      end

      def show
        @allergen = Allergen.find(params[:id])
      end

      def new
        @allergen = Allergen.new
      end

      def create
        @allergen = Allergen.new(allergen_params)
        @allergen.save
        redirect_to allergen_path(@allergen)
      end



    private

      def allergen_params
        params.require(:allergen).permit(:user_id, :allergen_id)
      end

end
