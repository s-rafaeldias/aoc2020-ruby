require_relative "inputs"

module Day02
  def self.part_one(real_data: true)
    passwords = []
    Inputs.get(2, real_data: real_data) do |raw|
      passwords = raw.split("\n").map { |p| Password.new(p) }
    end

    passwords.select{ |p| p.is_valid_password? }.count
  end

  def self.part_two(real_data: true)
    passwords = []
    Inputs.get(2, real_data: real_data) do |raw|
      passwords = raw.split("\n").map { |p| Password.new(p) }
    end

    passwords.select{ |p| p.is_valid_password2? }.count
  end
end


class Password
  attr_reader :password_policy

  def initialize(password_policy)
    @password_policy = password_policy
  end

  def is_valid_password?
    range, letter, password = *password_policy.split(" ")
    range = range.split("-").map { |v| v.to_i }
    # the #count will count all occurrences of all character in `letter`.
    # since letter is `[a-z]:`, it will count how many `:` there are on `password`
    num_letters_on_password = password.count letter

    (range.first..range.last) === num_letters_on_password
  end

  def is_valid_password2?
    positions, letter, password = *password_policy.split(" ")
    positions = positions.split("-").map { |v| v.to_i }
    letter.gsub!(/:/, "")

    first_letter = password[positions.first-1]
    second_letter = password[positions.last-1]

    first_letter != second_letter && (first_letter == letter || second_letter == letter)
  end
end
