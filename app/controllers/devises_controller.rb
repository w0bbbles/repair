class DevisesController < ApplicationController

def create
    # render plain: params[:item].inspect
    @item = Item.new(item_params)


    uploaded_file = params[:items][:image].path
    cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)
    @item.image = cloudinary_file["secure_url"]
    puts "**********************"
    puts cloudinary_file["secure_url"]

    @item.save
  end

end