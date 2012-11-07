class StaticController < ApplicationController
  def index
    @hogjaw_news = NewsPost.all
  end
  
  def our_music
  end
  
  def history
  end
  
  def photos
  end
  
  def merchandise
  end

  def tour_calendar
    @tourdates = Concert.all
  end
  
  def contact
  end
  
  def hogjaw_press
  end
end
