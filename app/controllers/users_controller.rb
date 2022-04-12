class UsersController < ApplicationController
    def index
        response = Faraday.get('https://reqres.in/api/users?page=2')
        @users = JSON.parse(response.body)['data']
    end
end