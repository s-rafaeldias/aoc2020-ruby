module Inputs
  def self.get(day, real_data: true, &block)
    if real_data
      raw_inputs = File.read "data/day#{day}.txt"
    else
      raw_inputs = self.method("day#{day}").call
    end

    block.call raw_inputs
  end

  private

  def self.day1
    "1721\n979\n366\n299\n675\n1456"
  end

  def self.day2
    "1-3 a: abcde\n1-3 b: cdefg\n2-9 c: ccccccccc"
  end

  def self.day3
    "..##.........##.........##.........##.........##.........##.......\n" +
      "#...#...#..#...#...#..#...#...#..#...#...#..#...#...#..#...#...#..\n" +
      ".#....#..#..#....#..#..#....#..#..#....#..#..#....#..#..#....#..#.\n" +
      "..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#\n" +
      ".#...##..#..#...##..#..#...##..#..#...##..#..#...##..#..#...##..#.\n" +
      "..#.##.......#.##.......#.##.......#.##.......#.##.......#.##.....\n" +
      ".#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#\n" +
      ".#........#.#........#.#........#.#........#.#........#.#........#\n" +
      "#.##...#...#.##...#...#.##...#...#.##...#...#.##...#...#.##...#...\n" +
      "#...##....##...##....##...##....##...##....##...##....##...##....#\n" +
      ".#..#...#.#.#..#...#.#.#..#...#.#.#..#...#.#.#..#...#.#.#..#...#.#\n"
  end

  def self.day4
    "ecl:gry pid:860033327 eyr:2020 hcl:#fffffd\n" \
    "byr:1937 iyr:2017 cid:147 hgt:183cm\n" \
    "\n" \
    "iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884\n" \
    "hcl:#cfa07d byr:1929\n" \
    "\n" \
    "hcl:#ae17e1 iyr:2013\n" \
    "eyr:2024\n" \
    "ecl:brn pid:760753108 byr:1931\n" \
    "hgt:179cm\n" \
    "\n" \
    "hcl:#cfa07d eyr:2025 pid:166559648\n" \
    "iyr:2011 ecl:brn hgt:59in\n"
  end
end
