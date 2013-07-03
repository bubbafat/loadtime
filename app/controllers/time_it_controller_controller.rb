class TimeItControllerController < ApplicationController
  def index
  end
  
  def start
    
  end
  
  def final
    params[:id]
    send_file Rails.root.join("public", "1x1.gif"), type: "image/gif", disposition: "inline"
  end
end
