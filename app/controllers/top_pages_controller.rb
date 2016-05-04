class TopPagesController < ApplicationController
  def home
	  @all_contents = TopPage.all
  end

  def create

  end

 def get_image
	     @all_contents = TopPage.all
	     @image = TopPage.find(params[:id])
	     send_data @image.img, :type => 'image/jpeg', :disposition => 'inline'
		   end

  def check
	  @contents = TopPage.new
	  @contents.title = params[:top_page][:title]
	  @contents.emotion = params[:top_page][:emotion]
	  @contents.img = params[:top_page][:img]
	  @contents.description = params[:top_page][:description]
	  @contents.main_text = params[:top_page][:main_text]
	  @contents.save
	  @all_contents = TopPage.all
	  redirect_to :action => "home" 
  end

end
