# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed

  end

  def speak(data)
    puts data
    puts data['message']
    Message.create! content: data['message']
  end
end
