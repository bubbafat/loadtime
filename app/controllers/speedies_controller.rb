class SpeediesController < ApplicationController
  def index
    @speedy = Speedy.new
    @speedy.first = Time.now.utc
    @speedy.useragent = request.env["HTTP_USER_AGENT"]
    @speedy.ipaddress = request.remote_ip
    @speedy.save()

    render
  end
  
  def elapsed
    @time = Time.now.utc
    @speedy = Speedy.find(params[:id])
    @speedy.final = @time
    @speedy.elapsed = (@speedy.final.to_f * 1000.0).to_i - (@speedy.first.to_f * 1000.0).to_i
    @speedy.save()
        
    @speedy.avg = Speedy.average('elapsed').to_i

    render :json => @speedy
  end
  
  def graph
    render :json => ActiveRecord::Base.connection.execute("select count(*) as value, ((elapsed / 1000) * 1000) + 1000 as label from speedies where elapsed is not null group by ((elapsed / 1000) * 1000) + 1000")
  end
end

