@samples
Feature: Basic smell detection
  In order to write better software
  As a developer
  I want to detect the smells in my Ruby code

  @inline
  Scenario: Correct smells from inline.rb
    When I run reek -n spec/samples/inline.rb
    Then the exit status indicates smells
    And it reports:
    """
    spec/samples/inline.rb -- 39 warnings:
      File has no descriptive comment (IrresponsibleModule)
      Inline declares the class variable @@directory (ClassVariable)
      Inline declares the class variable @@rootdir (ClassVariable)
      Inline#self.rootdir calls env.nil? twice (DuplicateMethodCall)
      Inline#self.rootdir has approx 8 statements (TooManyStatements)
      Inline#self.rootdir performs a nil-check. (NilCheck)
      Inline::C declares the class variable @@type_map (ClassVariable)
      Inline::C has at least 13 instance variables (TooManyInstanceVariables)
      Inline::C takes parameters [options, src] to 5 methods (DataClump)
      Inline::C tests $DEBUG at least 7 times (RepeatedConditional)
      Inline::C tests $TESTING at least 4 times (RepeatedConditional)
      Inline::C tests @@type_map.has_key?(type) at least 3 times (RepeatedConditional)
      Inline::C#build calls ($? != 0) twice (DuplicateMethodCall)
      Inline::C#build calls Inline.directory 5 times (DuplicateMethodCall)
      Inline::C#build calls io.puts 6 times (DuplicateMethodCall)
      Inline::C#build calls io.puts("#endif") twice (DuplicateMethodCall)
      Inline::C#build calls io.puts("#ifdef __cplusplus") twice (DuplicateMethodCall)
      Inline::C#build calls warn("Output:\n#{result}") twice (DuplicateMethodCall)
      Inline::C#build contains iterators nested 2 deep (NestedIterators)
      Inline::C#build has approx 60 statements (TooManyStatements)
      Inline::C#build has the variable name 'n' (UncommunicativeVariableName)
      Inline::C#build has the variable name 't' (UncommunicativeVariableName)
      Inline::C#c has the name 'c' (UncommunicativeMethodName)
      Inline::C#crap_for_windoze calls Config::CONFIG["libdir"] twice (DuplicateMethodCall)
      Inline::C#generate calls result.sub!(/\A\n/, "") twice (DuplicateMethodCall)
      Inline::C#generate calls signature["args"] twice (DuplicateMethodCall)
      Inline::C#generate calls signature["args"].map twice (DuplicateMethodCall)
      Inline::C#generate has approx 32 statements (TooManyStatements)
      Inline::C#initialize calls stack.empty? twice (DuplicateMethodCall)
      Inline::C#module_name has the variable name 'm' (UncommunicativeVariableName)
      Inline::C#module_name has the variable name 'x' (UncommunicativeVariableName)
      Inline::C#parse_signature has approx 15 statements (TooManyStatements)
      Inline::C#parse_signature has boolean parameter 'raw' (BooleanParameter)
      Inline::C#parse_signature has the variable name 'x' (UncommunicativeVariableName)
      Inline::C#parse_signature is controlled by argument raw (ControlParameter)
      Inline::C#strip_comments doesn't depend on instance state (UtilityFunction)
      Inline::C#strip_comments refers to src more than self (FeatureEnvy)
      Module#inline calls Inline.const_get(lang) twice (DuplicateMethodCall)
      Module#inline has approx 11 statements (TooManyStatements)
    """

  Scenario: Correct smells from optparse.rb
    When I run reek -n spec/samples/optparse.rb
    Then the exit status indicates smells
    And it reports:
    """
    spec/samples/optparse.rb -- 103 warnings:
      OptionParser has at least 42 methods (TooManyMethods)
      OptionParser has the variable name 'f' (UncommunicativeVariableName)
      OptionParser has the variable name 'k' (UncommunicativeVariableName)
      OptionParser has the variable name 'o' (UncommunicativeVariableName)
      OptionParser has the variable name 's' (UncommunicativeVariableName)
      OptionParser has the variable name 'v' (UncommunicativeVariableName)
      OptionParser tests (argv.size == 1) and Array.===(argv[0]) at least 3 times (RepeatedConditional)
      OptionParser tests a at least 7 times (RepeatedConditional)
      OptionParser tests default_pattern at least 7 times (RepeatedConditional)
      OptionParser tests not_style at least 3 times (RepeatedConditional)
      OptionParser tests s at least 7 times (RepeatedConditional)
      OptionParser#complete contains iterators nested 2 deep (NestedIterators)
      OptionParser#complete has 4 parameters (LongParameterList)
      OptionParser#complete has boolean parameter 'icase' (BooleanParameter)
      OptionParser#getopts calls result[opt] = false twice (DuplicateMethodCall)
      OptionParser#getopts has approx 17 statements (TooManyStatements)
      OptionParser#load has the variable name 's' (UncommunicativeVariableName)
      OptionParser#make_switch calls (long << (o = q.downcase)) twice (DuplicateMethodCall)
      OptionParser#make_switch calls (sdesc << "-#{q}") twice (DuplicateMethodCall)
      OptionParser#make_switch calls default_style.guess((arg = a)) 4 times (DuplicateMethodCall)
      OptionParser#make_switch calls notwice((a ? (Object) : (TrueClass)), klass, "type") twice (DuplicateMethodCall)
      OptionParser#make_switch calls notwice(NilClass, klass, "type") twice (DuplicateMethodCall)
      OptionParser#make_switch calls pattern.method(:convert) twice (DuplicateMethodCall)
      OptionParser#make_switch calls pattern.method(:convert).to_proc twice (DuplicateMethodCall)
      OptionParser#make_switch calls pattern.respond_to?(:convert) twice (DuplicateMethodCall)
      OptionParser#make_switch calls q.downcase 3 times (DuplicateMethodCall)
      OptionParser#make_switch calls search(:atype, FalseClass) twice (DuplicateMethodCall)
      OptionParser#make_switch calls search(:atype, o) 6 times (DuplicateMethodCall)
      OptionParser#make_switch contains iterators nested 3 deep (NestedIterators)
      OptionParser#make_switch has approx 68 statements (TooManyStatements)
      OptionParser#make_switch has the variable name 'a' (UncommunicativeVariableName)
      OptionParser#make_switch has the variable name 'c' (UncommunicativeVariableName)
      OptionParser#make_switch has the variable name 'n' (UncommunicativeVariableName)
      OptionParser#make_switch has the variable name 'o' (UncommunicativeVariableName)
      OptionParser#make_switch has the variable name 'q' (UncommunicativeVariableName)
      OptionParser#make_switch has the variable name 's' (UncommunicativeVariableName)
      OptionParser#make_switch has the variable name 'v' (UncommunicativeVariableName)
      OptionParser#make_switch performs a nil-check. (NilCheck)
      OptionParser#order calls argv[0] twice (DuplicateMethodCall)
      OptionParser#order refers to argv more than self (FeatureEnvy)
      OptionParser#parse calls argv[0] twice (DuplicateMethodCall)
      OptionParser#parse refers to argv more than self (FeatureEnvy)
      OptionParser#parse_in_order calls $!.set_option(arg, true) twice (DuplicateMethodCall)
      OptionParser#parse_in_order calls cb.call(val) twice (DuplicateMethodCall)
      OptionParser#parse_in_order calls raise($!.set_option(arg, true)) twice (DuplicateMethodCall)
      OptionParser#parse_in_order calls raise(*exc) twice (DuplicateMethodCall)
      OptionParser#parse_in_order calls setter.call(sw.switch_name, val) twice (DuplicateMethodCall)
      OptionParser#parse_in_order calls sw.block twice (DuplicateMethodCall)
      OptionParser#parse_in_order calls sw.switch_name twice (DuplicateMethodCall)
      OptionParser#parse_in_order contains iterators nested 3 deep (NestedIterators)
      OptionParser#parse_in_order has approx 28 statements (TooManyStatements)
      OptionParser#permute calls argv[0] twice (DuplicateMethodCall)
      OptionParser#permute refers to argv more than self (FeatureEnvy)
      OptionParser#search has the variable name 'k' (UncommunicativeVariableName)
      OptionParser#self.inc performs a nil-check. (NilCheck)
      OptionParser#summarize has 4 parameters (LongParameterList)
      OptionParser#summarize has the variable name 'l' (UncommunicativeVariableName)
      OptionParser#ver has the variable name 'v' (UncommunicativeVariableName)
      OptionParser::Arguable#options= is controlled by argument opt (ControlParameter)
      OptionParser::CompletingHash#match contains iterators nested 2 deep (NestedIterators)
      OptionParser::Completion#complete calls candidates.size twice (DuplicateMethodCall)
      OptionParser::Completion#complete calls k.id2name twice (DuplicateMethodCall)
      OptionParser::Completion#complete has approx 22 statements (TooManyStatements)
      OptionParser::Completion#complete has boolean parameter 'icase' (BooleanParameter)
      OptionParser::Completion#complete has the variable name 'k' (UncommunicativeVariableName)
      OptionParser::Completion#complete has the variable name 'v' (UncommunicativeVariableName)
      OptionParser::Completion#complete refers to candidates more than self (FeatureEnvy)
      OptionParser::Completion#convert has unused parameter 'opt' (UnusedParameters)
      OptionParser::List#accept has the parameter name 't' (UncommunicativeParameterName)
      OptionParser::List#accept refers to pat more than self (FeatureEnvy)
      OptionParser::List#add_banner refers to opt more than self (FeatureEnvy)
      OptionParser::List#complete has 4 parameters (LongParameterList)
      OptionParser::List#complete has boolean parameter 'icase' (BooleanParameter)
      OptionParser::List#reject has the parameter name 't' (UncommunicativeParameterName)
      OptionParser::List#summarize refers to opt more than self (FeatureEnvy)
      OptionParser::List#update has 5 parameters (LongParameterList)
      OptionParser::List#update has approx 6 statements (TooManyStatements)
      OptionParser::List#update has the variable name 'o' (UncommunicativeVariableName)
      OptionParser::ParseError#set_option is controlled by argument eq (ControlParameter)
      OptionParser::Switch#add_banner has the variable name 's' (UncommunicativeVariableName)
      OptionParser::Switch#initialize has 7 parameters (LongParameterList)
      OptionParser::Switch#parse_arg calls s.length twice (DuplicateMethodCall)
      OptionParser::Switch#parse_arg has approx 11 statements (TooManyStatements)
      OptionParser::Switch#parse_arg has the variable name 'm' (UncommunicativeVariableName)
      OptionParser::Switch#parse_arg has the variable name 's' (UncommunicativeVariableName)
      OptionParser::Switch#self.guess has the variable name 't' (UncommunicativeVariableName)
      OptionParser::Switch#self.incompatible_argument_styles has the parameter name 't' (UncommunicativeParameterName)
      OptionParser::Switch#summarize calls (indent + l) twice (DuplicateMethodCall)
      OptionParser::Switch#summarize calls left.collect twice (DuplicateMethodCall)
      OptionParser::Switch#summarize calls left.collect { |s| s.length }.max twice (DuplicateMethodCall)
      OptionParser::Switch#summarize calls left.collect { |s| s.length }.max.to_i twice (DuplicateMethodCall)
      OptionParser::Switch#summarize calls left.shift twice (DuplicateMethodCall)
      OptionParser::Switch#summarize calls left[-1] 3 times (DuplicateMethodCall)
      OptionParser::Switch#summarize calls s.length 3 times (DuplicateMethodCall)
      OptionParser::Switch#summarize contains iterators nested 2 deep (NestedIterators)
      OptionParser::Switch#summarize has 5 parameters (LongParameterList)
      OptionParser::Switch#summarize has approx 25 statements (TooManyStatements)
      OptionParser::Switch#summarize has the variable name 'l' (UncommunicativeVariableName)
      OptionParser::Switch#summarize has the variable name 'r' (UncommunicativeVariableName)
      OptionParser::Switch#summarize has the variable name 's' (UncommunicativeVariableName)
      OptionParser::Switch::NoArgument#parse has unused parameter 'argv' (UnusedParameters)
      OptionParser::Switch::OptionalArgument#parse has unused parameter 'argv' (UnusedParameters)
      OptionParser::Switch::PlacedArgument#parse has approx 6 statements (TooManyStatements)
    """

  Scenario: Correct smells from redcloth.rb
    When I run reek -n spec/samples/redcloth.rb
    Then the exit status indicates smells
    And it reports:
    """
    spec/samples/redcloth.rb -- 98 warnings:
      RedCloth has at least 44 methods (TooManyMethods)
      RedCloth has the variable name 'a' (UncommunicativeVariableName)
      RedCloth has the variable name 'b' (UncommunicativeVariableName)
      RedCloth takes parameters [atts, cite, content, tag] to 3 methods (DataClump)
      RedCloth tests atts at least 6 times (RepeatedConditional)
      RedCloth tests codepre.zero? at least 3 times (RepeatedConditional)
      RedCloth tests href at least 3 times (RepeatedConditional)
      RedCloth tests title at least 4 times (RepeatedConditional)
      RedCloth#block_markdown_atx refers to text more than self (FeatureEnvy)
      RedCloth#block_markdown_bq has approx 6 statements (TooManyStatements)
      RedCloth#block_markdown_lists has unused parameter 'text' (UnusedParameters)
      RedCloth#block_markdown_rule refers to text more than self (FeatureEnvy)
      RedCloth#block_markdown_setext refers to text more than self (FeatureEnvy)
      RedCloth#block_textile_lists calls (line_id - 1) twice (DuplicateMethodCall)
      RedCloth#block_textile_lists calls depth.last 5 times (DuplicateMethodCall)
      RedCloth#block_textile_lists calls depth.last.length twice (DuplicateMethodCall)
      RedCloth#block_textile_lists calls depth[i] twice (DuplicateMethodCall)
      RedCloth#block_textile_lists calls lines[(line_id - 1)] twice (DuplicateMethodCall)
      RedCloth#block_textile_lists calls tl.length 3 times (DuplicateMethodCall)
      RedCloth#block_textile_lists contains iterators nested 3 deep (NestedIterators)
      RedCloth#block_textile_lists has approx 20 statements (TooManyStatements)
      RedCloth#block_textile_lists has the variable name 'i' (UncommunicativeVariableName)
      RedCloth#block_textile_lists has the variable name 'v' (UncommunicativeVariableName)
      RedCloth#block_textile_lists refers to depth more than self (FeatureEnvy)
      RedCloth#block_textile_table contains iterators nested 3 deep (NestedIterators)
      RedCloth#block_textile_table has approx 18 statements (TooManyStatements)
      RedCloth#block_textile_table has the variable name 'x' (UncommunicativeVariableName)
      RedCloth#blocks contains iterators nested 2 deep (NestedIterators)
      RedCloth#blocks has approx 18 statements (TooManyStatements)
      RedCloth#blocks has boolean parameter 'deep_code' (BooleanParameter)
      RedCloth#blocks is controlled by argument deep_code (ControlParameter)
      RedCloth#clean_html calls tags[tag] twice (DuplicateMethodCall)
      RedCloth#clean_html contains iterators nested 3 deep (NestedIterators)
      RedCloth#clean_html doesn't depend on instance state (UtilityFunction)
      RedCloth#clean_html has approx 14 statements (TooManyStatements)
      RedCloth#clean_html has the variable name 'q' (UncommunicativeVariableName)
      RedCloth#clean_html has the variable name 'q2' (UncommunicativeVariableName)
      RedCloth#clean_html refers to raw more than self (FeatureEnvy)
      RedCloth#clean_html refers to tags more than self (FeatureEnvy)
      RedCloth#clean_white_space has approx 7 statements (TooManyStatements)
      RedCloth#clean_white_space refers to text more than self (FeatureEnvy)
      RedCloth#flush_left doesn't depend on instance state (UtilityFunction)
      RedCloth#flush_left refers to indt more than self (FeatureEnvy)
      RedCloth#flush_left refers to text more than self (FeatureEnvy)
      RedCloth#footnote_ref refers to text more than self (FeatureEnvy)
      RedCloth#glyphs_textile has approx 10 statements (TooManyStatements)
      RedCloth#htmlesc doesn't depend on instance state (UtilityFunction)
      RedCloth#htmlesc is controlled by argument mode (ControlParameter)
      RedCloth#htmlesc refers to str more than self (FeatureEnvy)
      RedCloth#incoming_entities refers to text more than self (FeatureEnvy)
      RedCloth#initialize has the variable name 'r' (UncommunicativeVariableName)
      RedCloth#inline contains iterators nested 2 deep (NestedIterators)
      RedCloth#inline_markdown_link has approx 6 statements (TooManyStatements)
      RedCloth#inline_markdown_link has the variable name 'm' (UncommunicativeVariableName)
      RedCloth#inline_markdown_reflink has approx 8 statements (TooManyStatements)
      RedCloth#inline_markdown_reflink has the variable name 'm' (UncommunicativeVariableName)
      RedCloth#inline_textile_code has the variable name 'm' (UncommunicativeVariableName)
      RedCloth#inline_textile_image has approx 17 statements (TooManyStatements)
      RedCloth#inline_textile_image has the variable name 'href_a1' (UncommunicativeVariableName)
      RedCloth#inline_textile_image has the variable name 'href_a2' (UncommunicativeVariableName)
      RedCloth#inline_textile_image has the variable name 'm' (UncommunicativeVariableName)
      RedCloth#inline_textile_link has approx 9 statements (TooManyStatements)
      RedCloth#inline_textile_link has the variable name 'm' (UncommunicativeVariableName)
      RedCloth#inline_textile_span contains iterators nested 2 deep (NestedIterators)
      RedCloth#inline_textile_span has approx 8 statements (TooManyStatements)
      RedCloth#inline_textile_span has the variable name 'm' (UncommunicativeVariableName)
      RedCloth#lT has the name 'lT' (UncommunicativeMethodName)
      RedCloth#lT is controlled by argument text (ControlParameter)
      RedCloth#no_textile doesn't depend on instance state (UtilityFunction)
      RedCloth#no_textile refers to text more than self (FeatureEnvy)
      RedCloth#pba calls $1.length twice (DuplicateMethodCall)
      RedCloth#pba has approx 21 statements (TooManyStatements)
      RedCloth#pba is controlled by argument element (ControlParameter)
      RedCloth#pba refers to style more than self (FeatureEnvy)
      RedCloth#pba refers to text more than self (FeatureEnvy)
      RedCloth#refs_markdown has the variable name 'm' (UncommunicativeVariableName)
      RedCloth#refs_textile has the variable name 'm' (UncommunicativeVariableName)
      RedCloth#retrieve has the variable name 'i' (UncommunicativeVariableName)
      RedCloth#retrieve has the variable name 'r' (UncommunicativeVariableName)
      RedCloth#rip_offtags calls ((codepre - used_offtags.length) > 0) twice (DuplicateMethodCall)
      RedCloth#rip_offtags calls (@pre_list.last << line) twice (DuplicateMethodCall)
      RedCloth#rip_offtags calls (codepre - used_offtags.length) twice (DuplicateMethodCall)
      RedCloth#rip_offtags calls @pre_list.last twice (DuplicateMethodCall)
      RedCloth#rip_offtags calls codepre.zero? twice (DuplicateMethodCall)
      RedCloth#rip_offtags calls htmlesc(line, :NoQuotes) twice (DuplicateMethodCall)
      RedCloth#rip_offtags calls used_offtags.length twice (DuplicateMethodCall)
      RedCloth#rip_offtags calls used_offtags["notextile"] 3 times (DuplicateMethodCall)
      RedCloth#rip_offtags has approx 18 statements (TooManyStatements)
      RedCloth#textile_bq has 4 parameters (LongParameterList)
      RedCloth#textile_bq has unused parameter 'tag' (UnusedParameters)
      RedCloth#textile_fn_ has 5 parameters (LongParameterList)
      RedCloth#textile_fn_ has unused parameter 'cite' (UnusedParameters)
      RedCloth#textile_fn_ has unused parameter 'tag' (UnusedParameters)
      RedCloth#textile_p has 4 parameters (LongParameterList)
      RedCloth#textile_p has unused parameter 'cite' (UnusedParameters)
      RedCloth#textile_popup_help has the parameter name 'windowH' (UncommunicativeParameterName)
      RedCloth#textile_popup_help has the parameter name 'windowW' (UncommunicativeParameterName)
      RedCloth#to_html has approx 24 statements (TooManyStatements)
    """

  Scenario: Correct smells from a source file with Ruby 2.0 specific syntax
    When I run reek spec/samples/ruby20_syntax.rb
    Then the exit status indicates smells
    And it reports:
    """
    spec/samples/ruby20_syntax.rb -- 2 warnings:
      [1]:SomeClass has no descriptive comment (IrresponsibleModule)
      [2]:SomeClass#method_with_keyword_arguments has unused parameter 'foo' (UnusedParameters)
    """
