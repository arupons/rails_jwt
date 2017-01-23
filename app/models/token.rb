class Token < ApplicationRecord
    before_save generate_token
    
    belongs_to :user
  
    private
        def generate_token
            self.token = JsonWebToken.encode(self.aplicacion + self.id)
        end
end
