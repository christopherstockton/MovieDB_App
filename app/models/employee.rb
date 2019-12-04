class Employee < ApplicationRecord
    validates :first_name, presence: true,
                      length: { minimum: 2 }
end
