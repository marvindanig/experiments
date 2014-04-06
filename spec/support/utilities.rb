def html_title(page_title)
  base_title = "Marvin Learns to Ruby on Rails"
  
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end