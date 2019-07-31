# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/haml/all/haml.rbi
#
# haml-5.1.1
module Haml
  def self.init_rails(*args); end
end
module Haml::Util
  def balance(scanner, start, finish, count = nil); end
  def check_encoding(str); end
  def check_haml_encoding(str, &block); end
  def contains_interpolation?(str); end
  def handle_interpolation(str); end
  def html_safe(text); end
  def human_indentation(indentation); end
  def inspect_obj(obj); end
  def parse_haml_magic_comment(str); end
  def rails_xss_safe?; end
  def silence_warnings; end
  def try_parse_haml_emacs_magic_comment(scanner); end
  def unescape_interpolation(str, escape_html = nil); end
  extend Haml::Util
end
class Haml::Parser
  def balance(*args); end
  def block_keyword(text); end
  def block_opened?; end
  def call(template); end
  def check_push_script_stack(keyword); end
  def close; end
  def close_filter(_); end
  def close_flat_section; end
  def close_haml_comment(_); end
  def close_script(node); end
  def close_silent_script(node); end
  def closes_flat?(line); end
  def comment(text); end
  def compute_tabs(line); end
  def continuation_script?(text); end
  def div(line); end
  def doctype(text); end
  def filter(name); end
  def filter_opened?; end
  def flat?; end
  def flat_script(line, escape_html = nil); end
  def haml_comment(text); end
  def handle_multiline(line); end
  def handle_ruby_multiline(line); end
  def initialize(options); end
  def is_multiline?(text); end
  def is_ruby_multiline?(text); end
  def mid_block_keyword?(text); end
  def next_line; end
  def parse_new_attribute(scanner); end
  def parse_new_attributes(text); end
  def parse_old_attributes(text); end
  def parse_static_hash(text); end
  def parse_tag(text); end
  def plain(line, escape_html = nil); end
  def process_indent(line); end
  def process_line(line); end
  def push(node); end
  def root; end
  def script(line, escape_html = nil, preserve = nil); end
  def self.parse_class_and_id(list); end
  def silent_script(line); end
  def tag(line); end
  include Haml::Util
end
class Haml::Parser::Line < Struct
  def eod; end
  def eod=(_); end
  def eod?; end
  def full; end
  def full=(_); end
  def index; end
  def index=(_); end
  def parser; end
  def parser=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def strip!(from); end
  def tabs; end
  def text; end
  def text=(_); end
  def whitespace; end
  def whitespace=(_); end
end
class Haml::Parser::ParseNode < Struct
  def children; end
  def children=(_); end
  def initialize(*args); end
  def inspect; end
  def line; end
  def line=(_); end
  def parent; end
  def parent=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def type; end
  def type=(_); end
  def value; end
  def value=(_); end
end
class Haml::Parser::DynamicAttributes < Struct
  def new; end
  def new=(_); end
  def old; end
  def old=(value); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def stripped_old; end
  def to_literal; end
end
module Haml::AttributeBuilder
  def self.build_attributes(is_html, attr_wrapper, escape_attrs, hyphenate_data_attrs, attributes = nil); end
  def self.build_data_keys(data_hash, hyphenate, attr_name = nil); end
  def self.filter_and_join(value, separator); end
  def self.flatten_data_attributes(data, key, join_char, seen = nil); end
  def self.merge_attributes!(to, from); end
  def self.merge_value(key, to, from); end
  def self.merge_values(key, *values); end
  def self.verify_attribute_names!(attribute_names); end
end
module Haml::AttributeParser
  def self.available?; end
  def self.each_attribute(hash_literal, &block); end
  def self.each_balanced_tokens(tokens, &block); end
  def self.expect_string_end!(token); end
  def self.hash_literal?(exp); end
  def self.parse(exp); end
  def self.shift_hash_rocket!(tokens); end
  def self.shift_key!(tokens); end
end
class Haml::AttributeParser::UnexpectedTokenError < StandardError
end
class Haml::AttributeParser::UnexpectedKeyError < StandardError
end
class Haml::AttributeCompiler
  def build_attribute_values(attributes, parsed_hashes); end
  def compile(attributes, object_ref, dynamic_attributes); end
  def compile_attribute(key, values); end
  def compile_attribute_values(values); end
  def compile_common_attribute(key, values); end
  def compile_id_or_class_attribute(id_or_class, values); end
  def frozen_string(str); end
  def group_values_for_sort(values); end
  def initialize(options); end
  def merged_value(key, values); end
  def runtime_build(values); end
  def self.runtime_build(attributes, object_ref, dynamic_attributes); end
  def static_build(values); end
  def true_value(key); end
  def unique_name; end
end
class Haml::AttributeCompiler::AttributeValue < Struct
  def key; end
  def key=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def to_literal; end
  def type; end
  def type=(_); end
  def value; end
  def value=(_); end
end
module Haml::TempleLineCounter
  def self.count_lines(exp); end
end
class Haml::TempleLineCounter::UnexpectedExpression < StandardError
end
class Haml::Compiler
  def build_script_formatter(text, opts); end
  def call(node); end
  def compile(node); end
  def compile_comment; end
  def compile_doctype; end
  def compile_filter; end
  def compile_haml_comment; end
  def compile_plain; end
  def compile_root; end
  def compile_script(&block); end
  def compile_silent_script; end
  def compile_tag; end
  def flush_merged_text; end
  def initialize(options); end
  def nuke_inner_whitespace?(node); end
  def options; end
  def options=(arg0); end
  def push_generated_script(text); end
  def push_script(text, opts = nil); end
  def push_silent(text, can_suppress = nil); end
  def push_temple(temple); end
  def push_text(text); end
  def resolve_newlines; end
  def rstrip_buffer!(index = nil); end
  def text_for_doctype; end
  include Haml::Util
end
class Haml::Options
  def [](key); end
  def []=(key, value); end
  def attr_wrapper; end
  def attr_wrapper=(value); end
  def autoclose; end
  def autoclose=(arg0); end
  def cdata; end
  def cdata=(arg0); end
  def compiler_class; end
  def compiler_class=(arg0); end
  def defaults; end
  def encoding; end
  def encoding=(value); end
  def escape_attrs; end
  def escape_attrs=(arg0); end
  def escape_attrs?; end
  def escape_filter_interpolations; end
  def escape_filter_interpolations=(arg0); end
  def escape_html; end
  def escape_html=(arg0); end
  def filename; end
  def filename=(arg0); end
  def filters; end
  def filters=(arg0); end
  def for_buffer; end
  def format; end
  def format=(value); end
  def html4?; end
  def html5?; end
  def html?; end
  def hyphenate_data_attrs; end
  def hyphenate_data_attrs=(arg0); end
  def hyphenate_data_attrs?; end
  def initialize(values = nil, &block); end
  def line; end
  def line=(arg0); end
  def mime_type; end
  def mime_type=(arg0); end
  def parser_class; end
  def parser_class=(arg0); end
  def preserve; end
  def preserve=(arg0); end
  def remove_whitespace; end
  def remove_whitespace=(value); end
  def remove_whitespace?; end
  def self.buffer_defaults; end
  def self.buffer_option_keys; end
  def self.defaults; end
  def self.valid_formats; end
  def self.wrap(options); end
  def suppress_eval; end
  def suppress_eval=(arg0); end
  def suppress_eval?; end
  def trace; end
  def trace=(arg0); end
  def xhtml?; end
end
module Haml::Helpers
  def block_is_haml?(block); end
  def capture_haml(*args, &block); end
  def escape_once(text); end
  def find_and_preserve(input = nil, tags = nil, &block); end
  def flatten(input = nil, &block); end
  def haml_bind_proc(&proc); end
  def haml_buffer; end
  def haml_concat(text = nil); end
  def haml_indent; end
  def haml_internal_concat(text = nil, newline = nil, indent = nil); end
  def haml_internal_concat_raw(text = nil, newline = nil, indent = nil); end
  def haml_tag(name, *rest, &block); end
  def haml_tag_if(condition, *tag); end
  def html_attrs(lang = nil); end
  def html_escape(text); end
  def init_haml_helpers; end
  def is_haml?; end
  def list_of(enum, opts = nil, &block); end
  def merge_name_and_attributes(name, attributes_hash = nil); end
  def non_haml; end
  def precede(str, &block); end
  def preserve(input = nil, &block); end
  def self.action_view?; end
  def succeed(str, &block); end
  def surround(front, back = nil, &block); end
  def tab_down(i = nil); end
  def tab_up(i = nil); end
  def with_haml_buffer(buffer); end
  def with_tabs(i); end
  extend Haml::Helpers
end
class Haml::Helpers::ErrorReturn
  def initialize(method); end
  def inspect; end
  def to_s; end
end
class Object < BasicObject
  def is_haml?; end
end
class Haml::Buffer
  def active=(arg0); end
  def active?; end
  def adjust_tabs(tab_change); end
  def attributes(class_id, obj_ref, *attributes_hashes); end
  def buffer; end
  def buffer=(arg0); end
  def capture_position; end
  def capture_position=(arg0); end
  def fix_textareas!(input); end
  def html4?; end
  def html5?; end
  def html?; end
  def initialize(upper = nil, options = nil); end
  def new_encoded_string; end
  def options; end
  def options=(arg0); end
  def parse_object_ref(ref); end
  def push_text(text, tab_change, dont_tab_up); end
  def rstrip!; end
  def tabs(count = nil); end
  def tabulation; end
  def tabulation=(val); end
  def toplevel?; end
  def underscore(camel_cased_word); end
  def upper; end
  def upper=(arg0); end
  def xhtml?; end
  include Haml::Helpers
  include Haml::Util
end
module Haml::Filters
  def defined; end
  def register_tilt_filter(name, options = nil); end
  def remove_filter(name); end
  extend Haml::Filters
end
module Haml::Filters::Base
  def compile(compiler, text); end
  def internal_compile(*args); end
  def render(_text); end
  def render_with_options(text, _options); end
  def self.included(base); end
end
module Haml::Filters::Plain
  def render(text); end
  extend Haml::Filters::Plain
  include Haml::Filters::Base
end
module Haml::Filters::Javascript
  def render_with_options(text, options); end
  extend Haml::Filters::Javascript
  include Haml::Filters::Base
end
module Haml::Filters::Css
  def render_with_options(text, options); end
  extend Haml::Filters::Css
  include Haml::Filters::Base
end
module Haml::Filters::Cdata
  def render(text); end
  extend Haml::Filters::Cdata
  include Haml::Filters::Base
end
module Haml::Filters::Escaped
  def render(text); end
  extend Haml::Filters::Escaped
  include Haml::Filters::Base
end
module Haml::Filters::Ruby
  def compile(compiler, text); end
  extend Haml::Filters::Ruby
  include Haml::Filters::Base
end
module Haml::Filters::Preserve
  def render(text); end
  extend Haml::Filters::Preserve
  include Haml::Filters::Base
end
module Haml::Filters::TiltFilter
  def options; end
  def options=(arg0); end
  def self.extended(base); end
  def template_class; end
  def template_class=(arg0); end
  def tilt_extension; end
  def tilt_extension=(arg0); end
  extend Haml::Filters::TiltFilter
end
module Haml::Filters::PrecompiledTiltFilter
  def compile(compiler, text); end
  def precompiled(text); end
end
module Haml::Filters::Sass
  def self.render_with_options(text, compiler_options); end
  extend Haml::Filters::Css
  extend Haml::Filters::Sass
  extend Haml::Filters::TiltFilter
  include Haml::Filters::Base
end
module Haml::Filters::Scss
  def self.render_with_options(text, compiler_options); end
  extend Haml::Filters::Css
  extend Haml::Filters::Scss
  extend Haml::Filters::TiltFilter
  include Haml::Filters::Base
end
module Haml::Filters::Less
  def self.render_with_options(text, compiler_options); end
  extend Haml::Filters::Css
  extend Haml::Filters::Less
  extend Haml::Filters::TiltFilter
  include Haml::Filters::Base
end
module Haml::Filters::Markdown
  def self.render_with_options(text, compiler_options); end
  extend Haml::Filters::Markdown
  extend Haml::Filters::Plain
  extend Haml::Filters::TiltFilter
  include Haml::Filters::Base
end
module Haml::Filters::Erb
  def self.precompiled(text); end
  def self.render_with_options(text, compiler_options); end
  extend Haml::Filters::Erb
  extend Haml::Filters::Plain
  extend Haml::Filters::PrecompiledTiltFilter
  extend Haml::Filters::TiltFilter
  include Haml::Filters::Base
end
module Haml::Filters::Coffee
  def self.render_with_options(text, compiler_options); end
  extend Haml::Filters::Coffee
  extend Haml::Filters::Javascript
  extend Haml::Filters::TiltFilter
  include Haml::Filters::Base
end
class Haml::Error < StandardError
  def initialize(message = nil, line = nil); end
  def line; end
  def self.message(key, *args); end
end
class Haml::SyntaxError < Haml::Error
end
class Haml::InvalidAttributeNameError < Haml::SyntaxError
end
class Haml::Escapable < Temple::Filter
  def initialize(*arg0); end
  def on_dynamic(value); end
  def on_escape(flag, exp); end
  def on_static(value); end
end
class Haml::Generator
  def call(exp); end
  def concat(str); end
  def on_code(exp); end
  def on_dynamic(code); end
  def on_multi(*exp); end
  def on_newline; end
  def on_static(text); end
  extend Temple::Mixins::ClassOptions
  extend Temple::Mixins::ThreadOptions
  include Temple::Mixins::CompiledDispatcher
  include Temple::Mixins::Options
end
class Haml::TempleEngine < Temple::Engine
  def compile(template); end
  def initialize_encoding(template, given_value); end
  def inspect_obj(obj); end
  def locals_code(names); end
  def precompiled; end
  def precompiled_method_return_value; end
  def precompiled_with_ambles(local_names, after_preamble: nil); end
  def precompiled_with_return_value; end
end
class Haml::Engine
  def compiler; end
  def def_method(object, name, *local_names); end
  def indentation; end
  def indentation=(arg0); end
  def initialize(template, options = nil); end
  def options; end
  def options=(arg0); end
  def options_for_buffer; end
  def precompiled(*args, &block); end
  def precompiled_method_return_value(*args, &block); end
  def render(scope = nil, locals = nil, &block); end
  def render_proc(scope = nil, *local_names); end
  def set_locals(locals, scope, scope_object); end
  def to_html(scope = nil, locals = nil, &block); end
  extend Forwardable
  include Haml::Util
end