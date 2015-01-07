class Tweet < ActiveRecord::Base

belongs_to :user



def to_s
body
end

end
