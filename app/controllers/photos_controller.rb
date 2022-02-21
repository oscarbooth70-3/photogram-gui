class PhotosController < ApplicationController

  def index
    matching_photos = Photo.all
    
    @list_of_photos = matching_photos.order({ :id => :asc})
    
    render({ :template => "photo_templates/index.html.erb"})

  end

  def show
    url_photo_id = params.fetch("path_photo")
    
    matching_photos = Photo.where({ :id => url_photo_id })
    
    @the_photo = matching_photos.at(0)

    render({ :template => "photo_templates/show.html.erb"})
      
  end


end
