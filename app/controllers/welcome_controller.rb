class WelcomeController < ApplicationController
  def index
    account_sid = 'AC4cc71d17a61a899d2822ce24368defed'
    auth_token = '581cc28439c39deee85892f030c5fb7b'
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @room = @client.video.rooms.create(unique_name: 'hellomeet_16')
  end

  def create
    account_sid = 'AC4cc71d17a61a899d2822ce24368defed'
    auth_token = '581cc28439c39deee85892f030c5fb7b'
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @room = @client.video.rooms.create(unique_name: 'hellomeet')
  end

end
