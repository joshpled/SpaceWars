class WinnersController < ApplicationController
    
    def index
        winners = Winner.all
        render json: WinnerSerializer.new(winners).serializable_hash
    end

end
