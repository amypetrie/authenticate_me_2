class User < ApplicationRecord
  validates_presence_of :name, :email, :password

  def self.authenticate(email, password)
    user = find_by(email: email)
    return nil if user == nil
    if user.password == password
      user
    else nil
    end
  end

  # Now, let’s actually implement logging in by allowing users to submit their login credentials as a post request to a /login URL. If the user sends a valid email and password combination, we’ll log the user in. We’ll “remember” that the user is logged in by storing data in the session hash.
end

# UsersController that handles registering a new user (so new and create actions) and a SessionsController to handle logging in and logging out.
