#Asks employee for name, occupation, age, year of birth, garlic bread order, interested in health insurance

#original initialize parameters switching to an array
#nme, job, age, year, garlic, health_insur
#mkay, need to understand splat operator better
#class Employee
  #attr_accessor :nme, :job, :age, :year, :garlic, :insur 
  #def initialize (*a)
    #i = 0
#Chose count over the myriad of other options because I read ahead in the 
#release a little. And it seemed from research to be useful. We'll find out! :)
    #whoop not necessary.... actually ee_nme is holding all values lol
    #shift might be what I'm looking for
    #data = [a]
    #@nme = data[0]
    #@job = data[1]
    #@age = data[2]
    #@year = data[3]
    #@garlic = data[4]
    #@insur = data[5]
  #end

#ran into a bit of an issue with returning the values. 
#Another class function should help with that ~or~ end up 
#teaching me how to build a better mousetrap lol
   #def details()
    #puts "Name:  #{self.nme}"
    #puts "Position: #{self.job}"
    #puts "Age: #@self.age"
    #puts "Year of birth: #{self.year}"
    #puts "Garlic bread lover: #{self.garlic}"
    #puts "Health insurance interest: #{self.insur}"
  #end
#end


#Realized I was way over my head to submit for the deadline

$employee = []
$name = ""
$job = ""
$age = ""
$yob = ""
$food = ""
$health = ""



def survey
  result = []
  puts "Welcome new employee! \n We have a quick survey for you to fill out \n (It's mandatory)"

  puts "What is your name?" 
  nme = gets.chomp
  result.push(nme) 
  #return nme
  puts "That's a nice name"

  
  puts "What is your new position here?"
  job = gets.chomp
  result.push(job)
  #return job
  puts "We need more of those around here!" 
  
  puts "How old are you?"
  age = gets.chomp
  result.push(age.to_i)
  #return age
  puts "Age is just a number!"
  
  puts "What year were you born?"
  year = gets.chomp
  result.push(year.to_i)

  #return year
  puts "Best time to be alive"
  
  puts "Our company cafeteria serves garlic bread. \nShould we order some for you? (y/n)"
  garlic = gets.chomp
  garlic = garlic.downcase
    if garlic == "y"
        result.push(true)
        #return garlic
        "I know, right?"

  elsif garlic == "n"
        result.push(false)
        #return garlic
        "I know, right?"
  else
        result.push(nil)
        #return garlic
        puts "Error. Please speak to your survey technician"

  end
  
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  health_insur = gets.chomp
  health_insur = health_insur.downcase
  if health_insur == "y"
    result.push(true)
  elsif health_insur == "n"
    result.push(false)
  else
    result.push(nil)
    puts "Error. Please speak to your survey technician"
  end
  return result
end
#Drake Cula” or “Tu Fang”

def vamp_checker(a=$name,j=$job,b=$age,c=$yob,d=$food,e=$health)
vamp_status = 0
    if a == "Drake Ula" or a == "Tu Fang"
      vamp_status +=5
    end
    if 2016 - b.to_i != c.to_i
      vamp_status +=2
    end
    if d == "false"
      vamp_status +=1
    end
    if e == "false"
      vamp_status +=1
    end

#return analysis
  puts "Employee Analysis Complete \n Name: #{a}\n Position: #{j}\n"
    case  
      when vamp_status > 4
        puts "Definitely a vampire."
      when vamp_status == 4
        puts "Almost certainly a vampire."
      when vamp_status >= 2 < 4
        puts "Probably a vampire."
      when vamp_status < 2
        puts "Probably not a vampire."
      else
        puts "Results inconclusive." 
    end
end

$employee = (survey())
a = $employee.join(",")

#puts "#{a}"

#massive slowdown and freezes, too many nested functions :/
#huh after some research it seems like a dynamic freeze
#threads are still active and its still pulling a TON of memory
#guessing its locked in a bad loop or something?
#aight not the input


#make string usable
#define local variables

#loop through backwards constructing separate strings
#remember that each will be reversed
#haha! prepend!
  
comma_count = 0

  while a.length > 1 do

    
    if a[-1] == ","
        comma_count += 1
      
    else
        case comma_count 
          when 0
          $health.prepend(a.slice(-1))
          puts "#{comma_count}"
      
          when 1
          $food.prepend(a.slice(-1))
          puts "#{comma_count}"
          

          when 2
          $yob.prepend(a.slice(-1))
          puts "#{comma_count}"
          

          when 3
          $age.prepend(a.slice(-1))
          puts "#{comma_count}"
          

          when 4
          $job.prepend(a.slice(-1))
          puts "#{comma_count}"

          else
          $name = a - ","
          puts "#{comma_count}"


        end
      a = a.chop!
    end
    
  end

puts "#{$name}"
#puts " #{n}\n #{b}\n #{c}\n #{d}\n #{e}\n"
#track vampire status
#went with case first; however, if then seemed to make more sense for
#variables
  






















