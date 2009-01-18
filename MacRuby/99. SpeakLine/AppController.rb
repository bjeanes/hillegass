#
#  AppController.rb
#  SpeakLine
#
#  Created by Bodaniel Jeanes on 18/01/09.
#  Copyright (c) 2009 Mocra. All rights reserved.
#

class AppController
  attr_accessor :textField, :startButton, :stopButton, :tableView
  
  def init
    super
    @speechSynth = NSSpeechSynthesizer.alloc.initWithVoice(nil)
    @speechSynth.delegate = self
    @voiceList = NSSpeechSynthesizer.availableVoices
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
    @stopButton.enabled = true
    @startButton.enabled = false
  end
  
  def stopIt(sender)
    puts "stopping"
    @speechSynth.stopSpeaking
  end
  
  # Delegates:
  def speechSynthesizer(sender, didFinishSpeaking:complete)
    puts "complete = #{complete}"
    @stopButton.enabled = false
    @startButton.enabled = true
  end
  
  def tableViewSelectionDidChange(notification)
    row = @tableView.selectedRow
    return if row == -1
    
    @speechSynth.voice = @voiceList[row]
    puts "new voice = #{niceVoiceNameForVoice(@speechSynth.voice)}"
  end
  
  # Datasource Methods:
  def numberOfRowsInTableView(tv)
    @voiceList.count
  end
  
  def tableView(tv, objectValueForTableColumn: column, row: row)
    voice = @voiceList[row]
    niceVoiceNameForVoice(voice)
  end
  
  private
  def niceVoiceNameForVoice(voice)
    NSSpeechSynthesizer.attributesForVoice(voice)[NSVoiceName]
  end
end
