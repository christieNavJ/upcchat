class Message < ActiveRecord::Base

   attr_accessible :name, :content

  Pusher.app_id = '36097'
  Pusher.key = '5380f001a63bb1fa5e24'
  Pusher.secret = '43c4d689e27c00e69bd9'

  after_create :send_to_pusher

  def send_to_pusher
    logger.info "Hi?"
    Pusher['DEW2013'].trigger("message:create", self.to_json)


  end



  
end