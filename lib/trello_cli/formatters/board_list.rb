module TrelloCli
  module Formatters
    class BoardList < Basic
      def to_legacy
        data.map {|d| "#{d[:name]} ( #{d[:id]} )"}.join("\n")
      end

      def to_tsv
        data.map {|d| "#{d[:id]}\t#{d[:name]}\n"}
      end
    end
  end
end
