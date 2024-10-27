class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
    @work = Work.new
    @categories = Category.all.map { |c| [c.category, c.id] }
  end

  def create
    work = Work.new(work_params)
    work.save
    redirect_to works_path
  end

  def show
    @work = Work.find(params[:id])
  end

  def edit
    @work = Work.find(params[:id])
    @categories = Category.all.map { |c| [c.category, c.id] }
  end
  
  def update
    work = Work.find(params[:id])
    work.update(work_params)
    redirect_to work_path
  end
  
  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to works_path
  end

  
def deadlines
  @tomorrow = Work.where(deadline: Date.tomorrow)
  @day_after_tomorrow = Work.where(deadline: Date.tomorrow + 1.day)
  @two_days_after_tomorrow = Work.where(deadline: Date.tomorrow + 2.days)
end
  

  private

  def work_params
    params.require(:work).permit(:content, :memo, :deadline, :category_id)
  end
end
