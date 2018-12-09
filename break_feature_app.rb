  def toggle_break(button_value)
    if button_value == 1
      puts "Break Starts Now"
    elsif button_value == 0
      puts "Break Ends Now"
    else
      puts ""
    end
  end

toggle_break(0)