require './item'
require 'json'

class Music < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date)
    super(publish_date)
    @on_spotify = on_spotify
    move_to_archive
  end

  private

  def can_be_archived?
    return true if super && @on_spotify
  end
end
