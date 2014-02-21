class RemarksController < ApplicationController
  
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
      @clip = Clip.find(params[:clip_id])
      @remark = @clip.remarks.create(params[:remark].permit(:commenter, :body))
      redirect_to clip_path(@clip)
    end

  def destroy
    @clip = Clip.find(params[:clip_id])
    @remark = @clip.remarks.find(params[:id])
    @remark.destroy
    redirect_to clip_path(@clip)
  end
end
