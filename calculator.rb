  require 'bigdecimal'


  # if numbers are incorrect according to readme, open a pull requst.




  # so users can enter numbers until stopped.
loop do
  puts "enter a dollar amount to be converted to snacklecoins"

  # bigdecimal is needed to make the decimals work
input = BigDecimal(gets.chomp)
 if input == 1 then
   puts 1
 elsif input == 1000000 then

  puts 0


 elsif input == 0 then

  puts 1000000

 elsif input > 1 && input < 1000000 then

  output = BigDecimal(input)

    output *= 0.000001



    output *= -1
    puts output.to_f


  elsif input < 1 then
    # 0 -> 10000000
    output = input

    puts output


      output = 1000000 - (output * BigDecimal('1000000'))


    puts output.to_f

    # .1 -> 1000000 - 900000

    # .2 -> 1000000 - 800000

  elsif input > 1000000


     xfactor = 0

    output = input


    while output >= 1000000 do

          xfactor+=1
          output-=1000000
    end


      final = -output + xfactor * -1 + 1


    puts final
 end


end
