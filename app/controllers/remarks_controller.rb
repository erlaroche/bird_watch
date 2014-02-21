class RemarksController < ApplicationController
  def create
    @clip = Clip.find(params[:clip_id])
    @remark = @clip.remark.create(params[:remark])
    redirect_to clip_path(@clip)
  end

  def destroy
    @clip = Clip.find(params[:clip_id])
    @remark = @clip.remarks.find(params[:id])
    @remark.destroy
    redirect_to clip_path(@clip)
  end
end
