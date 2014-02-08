using MarketData

facts("base element-wise operators on TimeArray values") do

  context("correct alignment and operation between two TimeVectors") do
    @fact (cl .* op).values[1]           => roughly(11128.07)
    @fact (cl[1:2] .* op[2:3]).values[1] => roughly(11208.03) 
  end

  context("only values on intersecting dates computed") do
    @fact (cl[1:4] .+ op[4:7]).values[1] => roughly(215.76)
    @fact length((cl[1:4] .+ op[4:7]))   => 1
  end

  context("correct operation between TimeVectors values and Int/Float64") do
    @fact (cl .- 100).values[1] => roughly(5.22)
  end

  context("correct operation between two TimeVectors values returns bool for comparisons") do
    @fact (cl .> op).values[1]  => false
    @fact (cl .< op).values[1]  => true
    @fact (cl .<= op).values[1] => true
    @fact (cl .>= op).values[1] => false
    @fact (cl .== op).values[1] => false
  end

  context("correct operation between TimeVectors values and Int/Float64 returns bool for comparison") do
    @fact (cl .> 105.22).values[1]  => false
    @fact (cl .< 105.22).values[1]  => false
    @fact (cl .>= 105.22).values[1] => true
    @fact (cl .<= 105.22).values[1] => true
    @fact (cl .== 105.22).values[1] => true
 
  end
end
