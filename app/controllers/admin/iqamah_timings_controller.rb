class Admin::IqamahTimingsController < Admin::BaseController
  before_filter :login_required
  def index
    @iqamah_timings = IqamahTiming.find(:all)
  end
  
  def update
    @iqamah_timing = IqamahTiming.find(params[:id])
    if @iqamah_timing.update_attributes(params[:iqamah_timing])
      flash[:notice] = "#{@iqamah_timing.name} was updated successfully."
    else
      flash[:notice] = "Error in updating."
    end
  end
end