class ChatsController < ApplicationController
  def index
    config_pusher = YAML.load_file('config/pusher.yml')[Rails.env]
    @pusher_access_key = config_pusher['access_key']
    @tutors = Tutor.all
    @student = current_student
  end
  def post
    Pusher['general_channel'].trigger('chat_event', {
    message: params[:message]
    })
    render :text => 'OK', :status => 200
  end
  def show
    @tutor = Tutor.find(params[:id])
  end
end
