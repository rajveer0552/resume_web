class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(
      first_name: params[:resume][:first_name],
      last_name: params[:resume][:last_name],
      age: params[:resume][:age],
      contact_number: params[:resume][:contact_number],
      address: params[:resume][:address],
      email: params[:resume][:email]
      )
    if @resume.save
      redirect_to resumes_path, notice: "Successfully."
    else 
      render :new
    end
  end

  def destroy
  end



  # private
  # def resume_params
  #     params.require(:resume).permit(:first_name,:last_name,:age,:contact_number,:address,:email)

  # end
end
