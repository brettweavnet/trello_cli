module TrelloCli
  module CLI
    module Commands
      module Shared

        def actions(obj = self)
          (obj.methods - obj.class.superclass.instance_methods).sort - shared_methods
        end

        def shared_methods
          TrelloCli::CLI::Commands::Shared.instance_methods
        end

        def target_name
          self.class.name.downcase.split('::').last
        end

        def ensure_credential_envs_set
          %w{TRELLO_MEMBER_TOKEN TRELLO_DEVELOPER_PUBLIC_KEY}.each do |e|
            unless ENV[e]
              puts "#{e} environment variable not set"
              exit 1
            end
          end
        end

        def help
          puts "Valid commands for #{target_name}: #{actions.join(', ')}"
          puts "For further help, append -h to sub command."
        end

      end
    end
  end
end
