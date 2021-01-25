require "pry"


class User

  attr_accessor :email, :age
  @@all_users = []



  def initialize(email_to_save,age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_users << [email_to_save, age_to_save]
  end



  def self.all
    return @@all_users
  end



  def self.find_by_email(id_email)
    @@user_all.each do |item|
      if(id_email == item[0])
        then puts "Voici l'age du User trouvé : #{item[1]}"
              return "trouvé"
      end
    end
    return "Pas trouvé"
  end

  

end



binding.pry
puts "end of file"