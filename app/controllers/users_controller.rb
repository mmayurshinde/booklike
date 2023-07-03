class UsersController < ApplicationController
	def fetch_users_like
		@user=User.find(params[:id])
		@likes=@user.likes
		render json:{message: "Likes",likes: @likes}
	end
	def fetch_favorite_books
		@user=User.find(params[:id])
		@fav_books=@user.fbook
		render json: {message: "favorite book",fav_book: @fav_books}
	end

end
