class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end
  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      redirect_to resumes_path, notice: "Successfully created."
    else
      render :new
    end
  end

  # def create
  #   @resume = Resume.new(
  #     first_name: params[:first_name],
  #     last_name: params[:last_name],
  #     age: params[:age],
  #     contact_number: params[:contact_number],
  #     address: params[:address],
  #     email: params[:email],
  #     attachment: params[:attachment],
  #     image: params[:image]
  #     )
  #   if @resume.save
  #     redirect_to resumes_path, notice: "Successfully."

  #   else 
  #     render :new
  #   end
  # end

  def destroy
  end



   private
  def resume_params
  params.require(:resume).permit(:first_name,:last_name,:age,:contact_number,:address,:email,:attachment,:image)
end

end


