class LandingpageController < ApplicationController
    def index
        # @items = Item.all
    puts "****************"
    puts "USEEEEER"
    #puts current_user.id
    @items = Item.where(repairing: false, completed: false)
        if @items.length > 10
            @finalItems = @items[-10,10]
        else
            @finalItems = @items
        end
    end
end