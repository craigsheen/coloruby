# Coloruby

A set of color helpers for ruby.

## Installation

Add this line to your application's Gemfile:

    gem "coloruby"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coloruby

## Usage

To lighten a color;

    Coloruby.lighten("#000000")
    => "#4d4d4d"
    
To darken a color;

    Coloruby.darken("#990000")
    => "#2e0000"
    
By default it will lighten or darken the color by 30%. You can pass in a different amount if you wish. This can be any number between 0.0 and 1.

    Coloruby.lighten("#000000", 1)
    => "#ffffff"
    
There is also a helper to check if a color is a light or a dark shade.

    Coloruby.light_or_dark?("#000000")
    => "dark"
    
    Coloruby.light?("#000000")
    => false
    
    Coloruby.dark?("#000000")
    => true
    
There is also a couple of converter helpers;

    Coloruby.hex_to_rgb("#ffffff")
    => [255, 255, 255]
    
    Coloruby.hex_to_rgb("#990000")
    => [153, 0, 0]
    
    Coloruby.rgb_to_hex([255, 255, 255])
    => "ffffff"
    
    Coloruby.rgb_to_hex([153, 0, 0])
    => "990000"