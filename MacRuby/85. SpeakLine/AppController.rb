#
#  AppController.rb
#  SpeakLine
#
#  Created by Bodaniel Jeanes on 18/01/09.
#  Copyright (c) 2009 Mocra. All rights reserved.
#

class AppController
  attr_accessor :textField, :speechSynth
  
  def init
    super
    @speechSynth = NSSpeechSynthesizer.alloc.initWithVoice(nil)
    self
  end
  
  def sayIt(sender)
    string = @textField.stringValue
    
    if string.empty?
      puts "string from #{textField} is of zero-length"
      return
    end
    
    @speechSynth.startSpeakingString(string)
    puts "Have started to say: #{string}"
  end
  
  def stopIt(sender)
    puts "stopping"
    @speechSynth.stopSpeaking
  end
end
