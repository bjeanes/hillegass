#
#  AppController.rb
#  KVCFun
#
#  Created by Bodaniel Jeanes on 18/01/09.
#  Copyright (c) 2009 Mocra. All rights reserved.
#

class AppController
  
  def init
    super
    self.setValue(5, forKey: 'fido')
    n = self.valueForKey 'fido'
    puts "fido = #{n}"
    self
  end
  
  def setFido(x)
    puts "Fido being set"
    @fido = x
  end
  
  def fido
    puts "fido being fetched"
    @fido
  end
  
end
