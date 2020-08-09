class MapsController < ApplicationController
  def index
  end

  def map
  # respond_to以下の記述によって、
  # remote: trueのアクセスに対して、
  # map.js.erbが変えるようになります。

  results = Geocoder.search(params[:address])
  @latlng = results.first.coordinates

  respond_to do |format|
    format.js
  end
  end
end
