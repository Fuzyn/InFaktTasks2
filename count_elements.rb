class CountElements
  def initialize(results)
    @results = results
  end

  def perform
    @results.tally
  end
end
