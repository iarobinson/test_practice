class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]
  before_action :set_test, except: [:new, :show]

  def index
    @experiences = Experience.all
  end

  def show
    @test = Test.find(@experience.test_id)
  end

  def new
    @test = Test.find(params[:test])
    if current_user.nil?
      @user = User.new
      @user.password = "saved_for_a_stranger"
      @user.email = "blank#{Time.now.to_f.floor.to_s}@blank.com"
      @user.save
    else
      @user = current_user
    end

    @experience = Experience.new
  end

  def edit
  end

  def create
    @experience = Experience.new(experience_params)

    respond_to do |format|
      if @experience.save
        format.html { redirect_to @experience, notice: 'Experience was successfully created.' }
        format.json { render :show, status: :created, location: @experience }
      else
        format.html { render :new }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to @experience, notice: 'Experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @experience.destroy
    respond_to do |format|
      format.html { redirect_to experiences_url, notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_experience
      @experience = Experience.find(params[:id])
    end

    def set_test
      @test = Test.find(params[:experience][:test_id])
    end

    def experience_params
      params.require(:experience).permit(:user_id, :pass, :grade, :test_id)
    end
end
