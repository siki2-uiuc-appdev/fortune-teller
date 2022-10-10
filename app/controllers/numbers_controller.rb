class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @loser_array = []

    5.times do
      loser_number = rand(1..100)

      @loser_array.push(loser_number)
    end

    render({ :template => "lottery_stuff/loser.html.erb"})
  end
end
