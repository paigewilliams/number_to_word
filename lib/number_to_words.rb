def number_to_words(number)
  ones = Hash.new()
  ones = { 0 => 'zero', 1 => 'one', 2 => 'two', 3  => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten' }

  teens = Hash.new()
  teens = { 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

  tens = Hash.new()
  tens = {2 => 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety' }

  hund = Hash.new()
  hund = {  1 => 'onehundred', 2 => 'twohundred', 3  => 'threehundred', 4 => 'fourhundred', 5 => 'fivehundred', 6 => 'sixhundred', 7 => 'sevenhundred', 8 => 'eighthundred', 9 => 'ninehundred' }

  if number <= 10
    ones.fetch(number)

  elsif number > 10 && number <= 19
    teens.fetch(number)

  elsif number > 20
    array = number.to_s.split("")
    number_array = array.map(&:to_i)
    if number_array.length === 3
      if number_array[0] < 10 && number_array[1] == 0 && number_array[2] == 0
        replaced = hund.fetch(number_array[0])
      elsif number_array[0] < 10 && number_array[1] < 10 && number_array[2] == 0
        replaced = hund.fetch(number_array[0]) + tens.fetch(number_array[1])
      elsif number_array[0] < 10 && number_array[1] < 10 && number_array[2] < 10
        replaced = hund.fetch(number_array[0]) + tens.fetch(number_array[1]) + ones.fetch(number_array[2])
      end

    elsif number_array.length === 2
      if number_array[0] < 10 && number_array[1] == 0
        replaced = tens.fetch(number_array[0])
      elsif number_array[0] < 10 && number_array[1] < 10
        replaced = tens.fetch(number_array[0]) + ones.fetch(number_array[1])
      end
    end
  end
end
