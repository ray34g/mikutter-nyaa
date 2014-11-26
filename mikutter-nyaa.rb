#-*- coding: utf-8 -*-
#
# * mikutter-nyaa.rb
# 
# post時に鳴くプラグイン．
#

Plugin.create :postvoice do

  SOUND_PATH = File.expand_path(File.join(File.dirname(__FILE__),'nyaa.wav'))
  on_posted do
    post_sound
  end

  def self.post_sound()
    if FileTest.exist?(SOUND_PATH)
    Plugin.call(:play_sound, SOUND_PATH) 
    end 
  end
end
