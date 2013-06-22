class CustomTime
    def add(original, add_minutes)
        array = original.split(':')
        hours = array[0].strip.to_i
        array = array[1].split(' ')
        minutes = array[0].strip.to_i + add_minutes
        period = array[1].strip.upcase
        while minutes > 59 do
            hours = hours + 1
            minutes = minutes - 60
            flip_period = true if hours == 12
        end
        if hours > 12 then
            hours = hours - 12
            flip_period = true
        end
        period = period == 'AM' ? 'PM' : 'AM' if flip_period
        return "#{hours}:%02d #{period}" % minutes
    end
end