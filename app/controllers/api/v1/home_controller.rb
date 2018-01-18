module Api::V1
  class HomeController < ApiController
    def index_public
      render json: { message: "Welcome! Please use '/docs' to see the API docs" }
    end
  end
end
