module LikesHelper
  def current_like(user_id, secret_id)
    Like.where(user_id: user_id, secret_id: secret_id).first
    # mylike = @current_like
  end
end
