class Zombie < ApplicationRecord
    validates_presence_of :nome
    
    validates_presence_of :bio
    validates_size_of :bio, minimum:4
    
    validates_presence_of :idade
    validates_numericality_of :idade
    
    validates_numericality_of :salario
    
    scope :roting, -> {
        where(apodrecendo: true)
    }
    
    scope :fresh, -> {
        where("idade<20")
    }
    
    scope :rot, -> {
        where("idade>20")
    }
    
    scope :recent, -> {
        order("created_at desc").limit(3)
    }
    
    has_many :tweets, dependent: :destroy
    
    has_one :brain, dependent: :destroy



before_save :make_apodrecendo
def make_apodrecendo
	self.apodrecendo=true if idade>20
end

end
