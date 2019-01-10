class Contact < ApplicationRecord
    #validates :content, length: { in: 1..140, too_short: "%{count} characters is the maximum allowed" }  
    validates :content, presence: true, length: { in: 1..140 }
end
