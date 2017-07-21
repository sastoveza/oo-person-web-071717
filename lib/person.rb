class Person 

	attr_reader :name 
	attr_accessor :bank_account, :hygiene
	attr_writer :happiness

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness
		if @happiness < 0 
			self.happiness = 0
		elsif @happiness > 10
			self.happiness = 10
		else
			@happiness
		end
	end 

	def hygiene
		if @hygiene < 0 
			self.hygiene = 0
		elsif @hygiene > 10
			self.hygiene = 10
		else
			@hygiene
		end
	end

	def happy?
		self.happiness > 7
	end

	def clean?
		self.hygiene > 7
	end

	def get_paid(salary)
		self.bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene -= 3
		self.happiness += 2
		"♪ another one bites the dust ♫"
	end

	def call_friend(name)
		@name
		self.happiness += 3
		name.happiness += 3
		"Hi #{name.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person_starting, topic)
		if topic == "politics"
			person_starting.happiness -= 2
			self.happiness -= 2		
		"blah blah partisan blah lobbyist"

		elsif topic == "weather"
			person_starting.happiness += 1
			self.happiness += 1
		"blah blah sun blah rain"
		else
		"blah blah blah blah blah"
		end
	end
end