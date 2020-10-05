require 'pry'
require './hashketball.rb'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def num_points_scored(name)
num = ""
  game_hash.each do |key,value|
    value[:players].each do |stats|
      if name == stats[:player_name]
        num = stats[:points] 
      end
    end
  end
  num
end


def shoe_size(name)
  num = ""
  game_hash.each do |key,value|
    value[:players].each do |stats|
      if name == stats[:player_name]
        num = stats[:shoe] 
      end
    end
  end
  num
end

def team_colors(team)
color = ""
    game_hash.each do |key, value|
      if team == value[:team_name]
        color = value[:colors] 
      end
    end
  color
end

def team_names
teams = []
  teams << game_hash[:home][:team_name] << game_hash[:away][:team_name]
end

def player_numbers(team)
num = []
  game_hash.each do |key, value|
      if team == value[:team_name]
        value[:players].each do |stats|
          num << stats[:number] 
        end
      end
    end
  num
end

def player_stats(name)
stats = {}
 game_hash.each do |key,value|
    value[:players].each do |info|
      if name == info[:player_name]
        stats = info
      end
    end
  end
  stats
end


def big_shoe_rebounds
player = ""
win_rebound = ""
arr = []
count = 0
x = 0

  game_hash.each do |key, value|
    value[:players].each do |stats|
      arr << stats[:shoe]
      end
      
      while count < arr.length do
        if x < arr[count]
          x = arr[count]
        end
      count += 1
      end
    end
  game_hash.each do |k,v|
    v[:players].each do |stats|
      if x == stats[:shoe]
        player = stats[:player_name]
        win_rebound = stats[:rebounds]
      end
    end
  end
  
  win_rebound
end  
 
 
def most_points_scored
  all_points = []
  game_hash.each do |k,v|
    v[:players].each do |player|
      all_points << player[:points]
    end
  end
  game_hash.each do |k, v|
    v[:players].each do |player|
      return player[:player_name] if player[:points]== all_points.max
    end
  end
end
  
