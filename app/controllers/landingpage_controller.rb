class LandingpageController < ApplicationController
    def index
        # @items = Item.all
    puts "****************"
    puts "USEEEEER"
    #puts current_user.id
    @items = Item.where(repairing: false, completed: false)
    end
end