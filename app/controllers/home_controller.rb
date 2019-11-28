class HomeController < ApplicationController
  def index
      if user_signed_in?
          Post.paginate(page:  params[:page], per_page: 12)
        @images = Image.paginate(:page => params[:page], :per_page => 30)
                        .order(id: :desc)
                        .where user_id: current_user.id
      end
  end
end
