module Api::V1
  class HomeController < ApiController
    def index_public
      render json: { message: "Welcome to Rails5API. Please use '/docs' to see the API docs" }
    end
  end
end
