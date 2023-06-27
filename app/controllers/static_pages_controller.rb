class StaticPagesController < ApplicationController

    def index
        flickr = Flickr.new(Figaro.env.flickr_api_key, Figaro.env.flickr_shared_secret)

        if params[:user_id]
            begin
                @photos = flickr.people.getPublicPhotos(user_id: params[:user_id])
                flash[:error] = nil
            rescue
                flash[:error] = 'UserID cannot be found'
            end
        end
    end
end
