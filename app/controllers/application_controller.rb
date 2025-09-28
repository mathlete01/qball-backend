class ApplicationController < ActionController::API

    def hello
        render json: {"success":1}
    end
    
end
