require 'benchmark'
n = 50000
Benchmark.bm do |x|
    x.report {a + b}
    x.report {a << b}
    x.report "#{a}#{b}"
    x.report a.concat(b)
end

require 'benchmark'
n = 50000
Benchmark.bm do |x|
    x.report {1 / 3.0}
    x.report {1.fdiv(3.0)}
    x.report {1 / 3.to_f}   
end

require 'benchmark'
n = 50000
Benchmark.bm do |x|
    x.report {[1] + [2]}
    x.report {[1] << 2}
end