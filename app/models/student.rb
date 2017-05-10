class Student < ActiveRecord::Base
    serialize :SClasses, Array
end
