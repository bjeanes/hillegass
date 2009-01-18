#
#  AppController.rb
#  MakeaDataSource
#
#  Created by Bodaniel Jeanes on 18/01/09.
#  Copyright (c) 2009 Mocra. All rights reserved.
#

class AppController
  attr_accessor :items, :newItemField, :toDoTableView
  
  def awakeFromNib
    @items = []
  end
  
  def createNewItem(sender)
    @items << @newItemField.stringValue
    @newItemField.stringValue = ''
    @toDoTableView.reloadData
  end
  
  # Datasource methods:
  def numberOfRowsInTableView(table)
    @items.count rescue 0
  end
  
  def tableView(tableView, objectValueForTableColumn: column, row: row)
    @items[row]
  end 
  
  def tableView(aTableView, setObjectValue: anObject, forTableColumn: aTableColumn, row: rowIndex)
    @items[rowIndex] = anObject.to_s
    @toDoTableView.reloadData
  end
end
