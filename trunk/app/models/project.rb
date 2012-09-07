class Project < ActiveRecord::Base
	has_many :registrations
	has_many :lodges

	validates :year,	presence: true, uniqueness: { case_sensative: false },
						numericality: { only_integer: true }
	
	validates :spots, 	presence: true, numericality: { only_integer: true }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,	presence: true, format: { with: VALID_EMAIL_REGEX }

	validates :totalCost, 	presence: true, numericality: { only_integer: true }

	validates :registrationCost, 	presence: true, numericality: { only_integer: true }

	validates :lastPaymentDate, 	presence: true
end
