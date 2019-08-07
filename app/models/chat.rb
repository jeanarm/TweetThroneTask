class Chat < ApplicationRecord
validates :username, presence: true
validates :mail, length: {in: 1..140}
end
