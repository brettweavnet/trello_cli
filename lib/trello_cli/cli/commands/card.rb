module TrelloCli
  module CLI
    module Commands
      class Card

        include Shared

        def create
          ensure_credential_envs_set
          TrelloCli::CLI::Card::Create.new.run
        rescue TrelloCli::Errors => e
          puts "error: #{e}"
          exit 1
        end

        def list
          ensure_credential_envs_set
          TrelloCli::CLI::Card::List.new.run
        end

        def move
          ensure_credential_envs_set
          TrelloCli::CLI::Card::Move.new.run
        end

      end
    end
  end
end
