# The stupidest logger you've ever seen.
# Just takes every log statement and puts with color.
class ColoredLogger < Logger
    def info(progname = nil, &block)
      puts yield.send($favorite_color)
    end
    def debug(progname = nil, &block)
      puts yield.send($favorite_color)
    end
    def warn(progname = nil, &block)
      puts yield.send($favorite_color)
    end
    def error(progname = nil, &block)
      puts yield.send($favorite_color)
    end
end