require "idcon/version"
require "idcon/hash"

module Idcon
  def self.svg(string, dimension: 5, size: 10)
    hash = Idcon::Hash::MD5.hash(string)

    color = []

    3.times do
      color << (hash & 255)
      hash >>= 8
    end

    squares = []

    ((dimension + 1) / 2).times do
      squares << (0...dimension).map {|a| (hash >> a) & 1}
      hash >>= dimension
    end

    squares += squares[0..-2].reverse

    width = dimension * size
    svg = "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"#{width}\" height=\"#{width}\">"

    attributes = "width=\"#{size}\" height=\"#{size}\" style=\"fill:rgb(#{color.join(',')});\""
    squares.each_with_index do |col, xindex|
      col.each_with_index do |square, yindex|
        if square == 1
          svg << "<rect x=\"#{xindex * size}\" y=\"#{yindex * size}\" #{attributes }/>"
        end
      end
    end

    svg << "</svg>"
  end
end
