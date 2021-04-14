class ScheduleController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
 
  end

  def show
  end

  def editra
  end

  def update
  end

  def destroy
  end
end
