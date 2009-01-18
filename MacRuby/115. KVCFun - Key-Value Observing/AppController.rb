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
    @fido = x.doubleValue
    puts "Fido being set to #{@fido}"
  end
  
  def fido
    puts "fido being fetched as #{@fido}"
    @fido
  end
  
end
