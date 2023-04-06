class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:destroy, :create, :new, :edit, :show]

  # GET /grades
  def index
    if !user_signed_in?
      redirect_to user_session_path
      else
        if params[:sort] == "asc"
          @grades = Grade.order(student_grade: :ASC)
        elsif params[:sort] == "desc"
          @grades = Grade.order(student_grade: :DESC)
        else
      @grades = Grade.all
        end
    end
  end

  # GET /grades/1
  def show
  end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to @grade, notice: 'Grade was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grades/1
  def update
    if @grade.update(grade_params)
      redirect_to @grade, notice: 'Grade was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /grades/1
  def destroy
    if(current_user.is_teacher)
      @grade.destroy
      redirect_to grades_url, notice: 'Grade was successfully destroyed.'
    else
      redirect_to root_path, alert: 'You are not authorized to complete this action.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_params
      params.require(:grade).permit(:student_id, :student_name, :student_grade)
    end
end
