class UsersController < ApplicationRecord

  def new
  end

  def create
    User.create(strong_params[params])
  end

end
