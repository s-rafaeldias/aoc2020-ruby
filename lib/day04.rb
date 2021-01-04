require_relative "inputs"

module Day04
  def self.part_one(real_data: true)
    passports = Array.new

    Inputs.get(4, real_data: real_data) do |data|
      passports = data
        .gsub!("\n", " ")
        .split("  ")
        .map { |data_to_parse| Passport.new data_to_parse }
    end

    passports
      .map { |p| p.is_valid? }
      .select { |p| p }
      .count
  end

  def self.part_two(real_data: true)
    self.part_one(real_data: real_data)
  end

end

class Passport
  REQUIRED_FIELDS = %i[byr iyr eyr hgt hcl ecl pid]
  attr_accessor :byr, :iyr, :eyr, :hgt, :hcl, :ecl, :pid, :cid

  def initialize(data_to_parse)
    values = data_to_parse.split " "
    values.each do |field|
      key, value = field.split ":"
      self.method("#{key}=").call value
    end
  end

  def byr
    @byr.to_i.between? 1920, 2002
  end

  def iyr
    @iyr.to_i.between? 2010, 2020
  end

  def eyr
    @eyr.to_i.between? 2020, 2030
  end

  def hgt
    if @hgt
      if @hgt.end_with? "cm"
        @hgt.delete_suffix("cm").to_i.between? 150, 193
      elsif @hgt.end_with? "in"
        @hgt.delete_suffix("in").to_i.between? 59, 76
      else
        nil
      end
    end
  end

  def hcl
    @hcl if /^#[0-9a-f]{6}$/.match? @hcl
  end

  def ecl
    @ecl if %w[amb blu brn gry grn hzl oth].any? @ecl
  end

  def pid
    @pid if /^[0-9]{9}$/.match? @pid
  end

  def is_valid?
    REQUIRED_FIELDS.each do |field|
      return false unless self.method(field).call
    end
    true
  end
end
