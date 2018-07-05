module ApplicationHelper
  def active?(path)
    'active' if current_page?(path)
  end
  
  def sixmd_or_twelveemd(index, item)
    if index+1 == item.count 
        'col-md-12'
    else
        'col-md-6'
    end    
  end
end
