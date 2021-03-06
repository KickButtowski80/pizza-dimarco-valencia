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
  
  def pizza_size(index)
    if index == 0
      'Medium 13"'
    elsif index == 1
      'Large 15"'
    elsif index == 2
      'X-Large 18"'
    elsif index == 3
      'Party 20"'
    end
  end
  
end
