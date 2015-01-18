class Tweet < ActiveRecord::Base

belongs_to :user
has_many :comments



def to_s
body
end

end
