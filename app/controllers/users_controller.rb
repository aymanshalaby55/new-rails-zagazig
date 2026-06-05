class UsersController < ApplicationController
  def index
    @users = [ { name: "ayman shalaby", email: "aymanshalaby@gmail.com", age: "23" } ]
  end
end
