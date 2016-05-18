class MessagesController < ApplicationController
  def create
    @c_student = current_student
    @c_teacher = current_teacher
    @chat = Chatroom.find(params[:chat_id])
    @messages = @chat.messages

    if teacher_signed_in?
      @student = @chat.student
    elsif student_signed_in? 
      @teacher = Teacher.find(params[:teacher_id])
    end

    if @c_student
      Message.create(
        content: params[:message], 
        user_type: 0,
        chatroom_id: params[:chat_id],
        student_id: current_student.id
        )
    else @c_teacher
      Message.create(
        content: params[:message], 
        user_type: 1,
        chatroom_id: params[:chat_id],
        teacher_id: current_teacher.id
        )
    end
    render template: 'chats/show'
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.update(
      content: params[:message]
    )
    @chat = Chatroom.find(params[:chat_id])
    student_signed_in? 
      @teacher = @chat.teacher
    @messages = @chat.messages
  end
  def destroy
    @chat = Chatroom.find(params[:chat_id])
    @message = Message.find(params[:id])
    @message.destroy
  end
end
