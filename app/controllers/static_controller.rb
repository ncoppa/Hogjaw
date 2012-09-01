class StaticController < ApplicationController
  def index
  end
  
  def our_music
  end
  
  def history
  end
  
  def photo
  end
  
  def merchandise
  end

  def tour_calendar
    @tourdates = Concert.all
  end
  
  def contact
  end
  
  def press
  end
end
