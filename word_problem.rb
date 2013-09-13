
class WordProblem

  def solve(problem_string)
    digits = problem_string.scan(/-?\d+/).map{|digit| digit.to_i}

    if problem_string.scan("plus").length > 0
      digits.reduce(:+)
    elsif problem_string.scan("minus").length > 0
      digits.reduce(:-)
    elsif problem_string.scan("times").length > 0
      digits.reduce(:*)
    end 
  end
end
