class Snack < ApplicationRecord
    validates :snack_name, presence: true, length: { minimum: 5 }
end
