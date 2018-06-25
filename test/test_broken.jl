@testset "6 points 2d" begin

    ball_ref = MB.SqBall{Array{Float64,1},Float64}([1.65905, -0.564561], 27.06598211506104)
    pts = StaticArrays.SArray{Tuple{2},Float64,1,2}[[6.51258, 0.635855], [-0.790666, -4.25263], [-0.601049, 2.39202], [1.55586, 0.854767], [3.44337, -0.559949], [3.03764, 2.28271]]

    c,r = miniball(pts, WelzlPivot())
    ball = MB.SqBall(c, r^2)
    @test_broken allinside(pts, ball, rtol=1e-1)
    @test_broken allinside(pts, ball, rtol=1e-6)

    # not sure if WelzlMTF should give a good result
    c,r = miniball(pts, WelzlMTF())
    ball = MB.SqBall(c, r^2)
    @test_broken allinside(pts, ball, rtol=1e-1)
    @test_broken allinside(pts, ball, rtol=1e-6)
end

@testset "3 points 3d" begin


    ball_ref = MB.SqBall{Array{Float64,1},Float64}([1.05415, -2.52996, -0.584979], 20.953846606252085)
    pts = StaticArrays.SArray{Tuple{3},Float64,1,3}[[1.18024, 0.0853978, -3.01374], [0.20966, -3.69213, 3.76129], [4.51103, -0.881877, 1.92254]]

    c,r = miniball(pts, WelzlPivot())
    ball = MB.SqBall(c, r^2)
    @test_broken allinside(pts, ball, rtol=1e-1)
    @test_broken allinside(pts, ball, rtol=1e-6)

    # not sure if WelzlMTF should give a good result
    c,r = miniball(pts, WelzlMTF())
    ball = MB.SqBall(c, r^2)
    @test_broken allinside(pts, ball, rtol=1e-1)
    @test_broken allinside(pts, ball, rtol=1e-6)
end

@testset "2 points 2d" begin


    ball_ref = MiniBallNext.SqBall{Array{Float64,1},Float64}([1.79979, -0.419288], 38.387992027461046)
    pts = StaticArrays.SArray{Tuple{2},Float64,1,2}[[0.379453, 0.65952], [1.29807, 1.06029], [1.66662, -0.225889]]

    c,r = miniball(pts, WelzlPivot())
    ball = MB.SqBall(c, r^2)
    @test_broken allinside(pts, ball, rtol=1e-1)
    @test_broken allinside(pts, ball, rtol=1e-6)

    # not sure if WelzlMTF should give a good result
    c,r = miniball(pts, WelzlMTF())
    ball = MB.SqBall(c, r^2)
    @test_broken allinside(pts, ball, rtol=1e-1)
    @test_broken allinside(pts, ball, rtol=1e-6)
end