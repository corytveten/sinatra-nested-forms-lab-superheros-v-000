require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do
      @team_name = params[team][name]
      @team_motto = params[team][motto]

      @memeber1_name = params[team][members][0][name]
      @memeber1_power = params[team][members][0][power]
      @memeber1_bio = params[team][members][0][bio]

      @memeber2_name = params[team][members][1][name]
      @memeber2_power = params[team][members][1][power]
      @memeber2_bio = params[team][members][1][bio]

      @memeber3_name = params[team][members][2][name]
      @memeber3_power = params[team][members][2][power]
      @memeber3_bio = params[team][members][2][bio]
      erb :team
    end

end
