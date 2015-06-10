require 'spec_helper'

describe Coloruby do
  
  it '#lighten' do
    expect(Coloruby.lighten('#000000')).to eql('#4d4d4d')
  end
  
  it '#darken' do
    expect(Coloruby.darken('#990000')).to eql('#2e0000')
  end
  
  it '#hex_to_rgb' do
    expect(Coloruby.hex_to_rgb('#ffffff')).to eql([255, 255, 255])
  end
  
  it '#rgb_to_hex' do
    expect(Coloruby.rgb_to_hex([255, 255, 255])).to eql('#ffffff')
  end
  
  it '#light_or_dark?' do
    expect(Coloruby.light_or_dark?('#000000')).to eql('dark')
    expect(Coloruby.light_or_dark?('#ffffff')).to eql('light')
  end
  
  it '#dark?' do
    expect(Coloruby.dark?('#000000')).to eql(true)
    expect(Coloruby.dark?('#ffffff')).to eql(false)
  end
  
  it '#light?' do
    expect(Coloruby.light?('#ffffff')).to eql(true)
    expect(Coloruby.light?('#000000')).to eql(false)
  end
  
end
