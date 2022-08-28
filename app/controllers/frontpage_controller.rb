class FrontpageController < ApplicationController
  def index
    @pagy, @posts = pagy_countless(Post.order(created_at: :desc), items: 5)

    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
end
