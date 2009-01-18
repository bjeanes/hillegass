#
#  WindowDelegate.rb
#  MakeADelegate
#
#  Created by Bodaniel Jeanes on 18/01/09.
#  Copyright (c) 2009 Mocra. All rights reserved.
#

class WindowDelegate
  def windowWillResize(sender, toSize: frameSize)
    frameSize.width = frameSize.height * 2
    frameSize
  end
end
