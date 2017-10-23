class User < ApplicationRecord
    # Creates a user account with the info returned from facebook
    def self.create_with_omniauth(auth)
        create! do 
            user.provider = auth ["provider"]
            user.uid = auth["uid"]
            user.name = auth["info"]["name"]
            
        end
    end
    #  Get facebook profile picture
    def small_image
        "http://graph.favebook.com/#{self.uid}/picture?type=small"
        
    end 
    
    def normal_image
        "http://graph.favebook.com/#{self.uid}/picture?type=normal"
        
    end
end
