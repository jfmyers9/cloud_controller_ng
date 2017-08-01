module VCAP::RestAPI
  #
  # Use this class to implement special-cases for querying against
  # the Event Controller

  class EventQuery < Query
    private

    def query_filter(key, comparison, val)
      values = split_values(comparison, val)
      query_filter_with_values(key, comparison, values)
    end
  end
end
