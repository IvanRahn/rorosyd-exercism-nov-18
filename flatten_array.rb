
class FlattenArray
  class << self

    # best
    def flatten(array)
      array.flatten.compact
    end

    # recursive
    # def flatten(array, flattened = [])
    #   array.each do |el|
    #     if el.is_a? Array
    #       flatten(el, flattened)
    #     else
    #       flattened << el
    #     end
    #   end
    #   flattened.compact
    # end

    # wacky
    # def flatten(array)
    #   array = array.inspect
    #   array = array.gsub(/(,?\[|\]+)\s?|"?\\?\s?/, "").split(",").map do |el|
    #     if el.match(/^\d+$/)
    #       el = el.to_i
    #     elsif el.match(/^\d*.\d+$/)
    #       el = el.to_f
    #     elsif el == "nil"
    #       next
    #     else
    #       el
    #     end
    #   end
    #   array.compact
    # end
  end
end
