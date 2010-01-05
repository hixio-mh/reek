require 'reek/smells/smell_detector'
require 'reek/smell_warning'

module Reek
  module Smells

    #
    # An Uncommunicative Name is a name that doesn't communicate its intent
    # well enough.
    # 
    # Poor names make it hard for the reader to build a mental picture
    # of what's going on in the code. They can also be mis-interpreted;
    # and they hurt the flow of reading, because the reader must slow
    # down to interpret the names.
    #
    # Currently +UncommunicativeName+ checks for
    # * 1-character names
    # * names ending with a number
    #
    class UncommunicativeName < SmellDetector

      # The name of the config field that lists the regexps of
      # smelly names to be reported.
      REJECT_KEY = 'reject'

      DEFAULT_REJECT_SET = [/^.$/, /[0-9]$/]
      
      # The name of the config field that lists the specific names that are
      # to be treated as exceptions; these names will not be reported as
      # uncommunicative.
      ACCEPT_KEY = 'accept'

      DEFAULT_ACCEPT_SET = ['Inline::C']

      def self.default_config
        super.adopt(
          REJECT_KEY => DEFAULT_REJECT_SET,
          ACCEPT_KEY => DEFAULT_ACCEPT_SET
        )
      end

      def self.contexts      # :nodoc:
        [:module, :class, :defn, :defs, :iter]
      end

      def initialize(source = '???', config = UncommunicativeName.default_config)
        super(source, config)
      end

      #
      # Checks the given +context+ for uncommunicative names.
      # Remembers any smells found.
      #
      def examine_context(context)
        context.variable_names.each do |name|
          next unless is_bad_name?(name, context)
          found(context, "has the variable name '#{name}'", 'UncommunicativeVariableName',
            {'variable_name' => name.to_s})
        end
      end

      def is_bad_name?(name, context)  # :nodoc:
        var = name.effective_name
        return false if var == '*' or value(ACCEPT_KEY, context, DEFAULT_ACCEPT_SET).include?(var)
        value(REJECT_KEY, context, DEFAULT_REJECT_SET).detect {|patt| patt === var}
      end
    end
  end
end
