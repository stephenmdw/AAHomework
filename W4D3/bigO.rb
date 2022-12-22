arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
    longest = arr[0]
    arr.each do |ele|
        arr.each do |ele2|
            if ele.length < ele2.length
                longest = ele2
            end
        end
    end
    longest
end

p sluggish_octopus(arr)

class Array
    #this should look familiar
    def merge_sort(&prc)
      prc ||= Proc.new { |x, y| x <=> y }
  
      return self if count <= 1
  
      midpoint = count / 2
      sorted_left = self.take(midpoint).merge_sort(&prc)
      sorted_right = self.drop(midpoint).merge_sort(&prc)
  
      Array.merge(sorted_left, sorted_right, &prc)
    end
  
    private
    def self.merge(left, right, &prc)
      merged = []
  
      until left.empty? || right.empty?
        case prc.call(left.first, right.first)
        when -1
          merged << left.shift
        when 0
          merged << left.shift
        when 1
          merged << right.shift
        end
      end
  
      merged + left + right
  
      merged
    end
  end


def biggest_fish(fishes)
    # sort the array longest to shortest
    prc = Proc.new { |x, y| y.length <=> x.length }
    #return the first element
    fishes.merge_sort(&prc)[0]
  end



def linear_fish(arr)
    longest = arr[0]
    arr.each do |ele|
        if ele.length > longest.length
            longest = ele
        end
    end
    longest
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up" ]


def slow_dance(target, arr)
    arr.each_with_index do |ele, i|
        return i if ele == target
    end
end

def fast_dance(target, arr)
    arr[target]
end