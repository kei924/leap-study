class ChatsController < ApplicationController
  def index
    # config_pusher = YAML.load_file('config/pusher.yml')[Rails.env]
    # @pusher_access_key = config_pusher['access_key']
    @teachers = Teacher.all
    @students = Student.all
    @c_student = current_student
    @c_teacher = current_teacher
    if student_signed_in?
      @student = Student.find(params[:student_id])
    end

    if @c_student
      @chats = Chatroom.where(student_id: current_student.id).includes(:teacher)
      @user_type = 0
    elsif @c_teacher
      @chats = Chatroom.where(teacher_id: current_teacher.id).includes(:student)
      @user_type = 1
    end
  end

  #チャットが作られた時
  def new
  end

  def show
    # config_pusher = YAML.load_file('config/pusher.yml')[Rails.env]
    # @pusher_access_key = config_pusher['access_key']
    @teacher = Teacher.find(params[:teacher_id])
    @student = Student.find(params[:student_id])
    @chat = Chatroom.where(teacher_id: params[:teacher_id], student_id: params[:student_id]).first_or_create
    @messages = @chat.messages
  end
  # private
  # def create_params
  #   params.require(:content)
  # end

  # pusherの実装
  # def post
  #   Pusher['general_channel'].trigger('chat_event', {
  #     message: params[:message]
  #   })
  #   render :text => 'OK', :status => 200
  # end

end
