#
#  Foo.rb
#  RandomApp
#
#  Created by Bodaniel Jeanes on 18/01/09.
#  Copyright (c) 2009 Mocra. All rights reserved.
#

class Foo
  attr_accessor :textField
  
  def generate(sender)    
    generated = (rand(100) % 100) + 1
    puts "generated = #{generated}"
    
    @textField.intValue = generated
  end
   
  def seed(sender)
    # could call srand() but rand() does this automatically in ruby if not yet done, so we'll do nothing here
    @textField.stringValue = "Generator seeded"
  end
  
  def awakeFromNib
    @textField.objectValue = NSCalendarDate.calendarDate
  end
end
