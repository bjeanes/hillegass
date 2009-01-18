#
#  AppController.rb
#  CountCharacters
#
#  Created by Bodaniel Jeanes on 18/01/09.
#  Copyright (c) 2009 Mocra. All rights reserved.
#

class AppController
  attr_accessor :textField, :label
  
  def countCharacters(sender)
    str = textField.stringValue
    label.stringValue = "'#{str}' has #{str.length} characters."
  end
end
