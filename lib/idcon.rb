require 'idcon/version'
require 'rmagick'

module Idcon
  def self.svg(string, dimension: 5, size: 10)
    hash = Digest::MD5.hexdigest(string).to_i(16)

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

  def self.png(string)
    svg_string = self.svg(string)

    img = Magick::Image.from_blob(svg_string) {self.format = "SVG"}.first
    img.write "idcon.png"
  end

end
