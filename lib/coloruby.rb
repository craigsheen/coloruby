class Coloruby
  
  def self.lighten(hex_color, amount=0.3)
    hex_color = hex_color.gsub('#','')
    rgb = hex_color.scan(/../).map { |color| color.hex }
    rgb[0] = [(rgb[0].to_i + 255 * amount).round, 255].min
    rgb[1] = [(rgb[1].to_i + 255 * amount).round, 255].min
    rgb[2] = [(rgb[2].to_i + 255 * amount).round, 255].min
    "#%02x%02x%02x" % rgb
  end
  
  def self.darken(hex_color, amount=0.3)
    hex_color = hex_color.gsub('#','')
    rgb = hex_color.scan(/../).map { |color| color.hex }
    rgb[0] = (rgb[0].to_i * amount).round
    rgb[1] = (rgb[1].to_i * amount).round
    rgb[2] = (rgb[2].to_i * amount).round
    "#%02x%02x%02x" % rgb
  end
  
  def self.hex_to_rgb(hex_color)
    hex_color = hex_color.gsub('#','')
    hex_color.scan(/../).map { |color| color.hex }
  end
  
  def self.rgb_to_hex(rgb_color)
    '#'+rgb_color.map { |color| color < 10 ? "0#{color.to_s(16)}" : color.to_s(16) }.join("")
  end
  
  def self.light_or_dark?(hex, dark_limit=0.5)
    rgb = hex.match /#(..)(..)(..)/
    brightness = Math.sqrt(0.241 * rgb[1].hex**2 + 0.691 * rgb[2].hex**2 + 0.068 * rgb[3].hex**2) / 255
    if brightness > dark_limit
      "light"
    else
      "dark"
    end
  end
  
  def self.dark?(hex)
    light_or_dark?(hex) == "dark"
  end
  
  def self.light?(hex)
    light_or_dark?(hex) == "light"
  end
  
end