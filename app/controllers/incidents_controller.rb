class IncidentsController < ApplicationController

  def new
    @incident = Incident.new
  end

end
