$number_of_counter_instances = 0

class Counter
  attr_accessor :creation_quantity

  def initialize(start_value, end_value)
    raise StandardError, 'Start value cannot be higher than end value' if start_value > end_value

    $number_of_counter_instances += 1
    start_value < 0 ? @creation_quantity = -start_value + end_value : @creation_quantity = end_value - start_value

    if $number_of_counter_instances == @creation_quantity
      p "Created #{$number_of_counter_instances} Counter class instances"
    else
      Counter.new(start_value, end_value)
    end
  end
end

Counter.new(-300, -100)
