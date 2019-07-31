# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sinatra/all/sinatra.rbi
#
# sinatra-2.0.5
module Sinatra
  def self.helpers(*extensions, &block); end
  def self.new(base = nil, &block); end
  def self.register(*extensions, &block); end
  def self.use(*args, &block); end
end
class Sinatra::IndifferentHash < Hash
  def [](key); end
  def []=(key, value); end
  def assoc(key); end
  def convert_key(key); end
  def convert_value(value); end
  def default(*args); end
  def default=(value); end
  def delete(key); end
  def dig(key, *other_keys); end
  def fetch(key, *args); end
  def fetch_values(*keys); end
  def has_key?(key); end
  def has_value?(value); end
  def include?(key); end
  def initialize(*args); end
  def key(value); end
  def key?(key); end
  def member?(key); end
  def merge!(other_hash); end
  def merge(other_hash, &block); end
  def rassoc(value); end
  def replace(other_hash); end
  def self.[](*args); end
  def slice(*keys); end
  def store(key, value); end
  def transform_keys!; end
  def transform_keys(&block); end
  def transform_values!; end
  def transform_values(&block); end
  def update(other_hash); end
  def value?(value); end
  def values_at(*keys); end
end
class Sinatra::ShowExceptions < Rack::ShowExceptions
  def bad_request?(e); end
  def call(env); end
  def frame_class(frame); end
  def initialize(app); end
  def prefers_plain_text?(env); end
  def pretty(env, exception); end
end
class Sinatra::Request < Rack::Request
  def accept; end
  def accept?(type); end
  def forwarded?; end
  def idempotent?; end
  def link?; end
  def params; end
  def preferred_type(*types); end
  def safe?; end
  def secure?; end
  def unlink?; end
end
class Sinatra::Request::AcceptEntry
  def <=>(other); end
  def entry; end
  def initialize(entry); end
  def method_missing(*args, &block); end
  def params; end
  def params=(arg0); end
  def priority; end
  def respond_to?(*args); end
  def to_s(full = nil); end
  def to_str; end
end
class Sinatra::Response < Rack::Response
  def body=(value); end
  def calculate_content_length?; end
  def drop_body?; end
  def drop_content_info?; end
  def each; end
  def finish; end
  def initialize(*arg0); end
end
class Anonymous_Struct_13 < Struct
  def app; end
  def app=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sinatra::ExtendedRack < Anonymous_Struct_13
  def after_response(&block); end
  def async?(status, headers, body); end
  def call(env); end
  def setup_close(env, status, headers, body); end
end
class Sinatra::CommonLogger < Rack::CommonLogger
  def call(env); end
end
class Rack::CommonLogger
  def call_without_check(env); end
end
class Sinatra::BadRequest < TypeError
  def http_status; end
end
class Sinatra::NotFound < NameError
  def http_status; end
end
module Sinatra::Helpers
  def attachment(filename = nil, disposition = nil); end
  def back; end
  def bad_request?; end
  def body(value = nil, &block); end
  def cache_control(*values); end
  def client_error?; end
  def content_type(type = nil, params = nil); end
  def error(code, body = nil); end
  def etag(value, options = nil); end
  def etag_matches?(list, new_resource = nil); end
  def expires(amount, *values); end
  def headers(hash = nil); end
  def informational?; end
  def last_modified(time); end
  def logger; end
  def mime_type(type); end
  def not_found(body = nil); end
  def not_found?; end
  def redirect(uri, *args); end
  def redirect?; end
  def send_file(path, opts = nil); end
  def server_error?; end
  def session; end
  def status(value = nil); end
  def stream(keep_open = nil); end
  def success?; end
  def time_for(value); end
  def to(addr = nil, absolute = nil, add_script_name = nil); end
  def uri(addr = nil, absolute = nil, add_script_name = nil); end
  def url(addr = nil, absolute = nil, add_script_name = nil); end
  def with_params(temp_params); end
end
class Sinatra::Helpers::Stream
  def <<(data); end
  def callback(&block); end
  def close; end
  def closed?; end
  def each(&front); end
  def errback(&block); end
  def initialize(scheduler = nil, keep_open = nil, &back); end
  def self.defer(*arg0); end
  def self.schedule(*arg0); end
end
module Sinatra::Templates
  def asciidoc(template, options = nil, locals = nil); end
  def builder(template = nil, options = nil, locals = nil, &block); end
  def coffee(template, options = nil, locals = nil); end
  def compile_template(engine, data, options, views); end
  def creole(template, options = nil, locals = nil); end
  def erb(template, options = nil, locals = nil, &block); end
  def erubis(template, options = nil, locals = nil); end
  def find_template(views, name, engine); end
  def haml(template, options = nil, locals = nil, &block); end
  def initialize; end
  def less(template, options = nil, locals = nil); end
  def liquid(template, options = nil, locals = nil, &block); end
  def markaby(template = nil, options = nil, locals = nil, &block); end
  def markdown(template, options = nil, locals = nil); end
  def mediawiki(template, options = nil, locals = nil); end
  def nokogiri(template = nil, options = nil, locals = nil, &block); end
  def rabl(template, options = nil, locals = nil); end
  def radius(template, options = nil, locals = nil); end
  def rdoc(template, options = nil, locals = nil); end
  def render(engine, data, options = nil, locals = nil, &block); end
  def render_ruby(engine, template, options = nil, locals = nil, &block); end
  def sass(template, options = nil, locals = nil); end
  def scss(template, options = nil, locals = nil); end
  def slim(template, options = nil, locals = nil, &block); end
  def stylus(template, options = nil, locals = nil); end
  def textile(template, options = nil, locals = nil); end
  def wlang(template, options = nil, locals = nil, &block); end
  def yajl(template, options = nil, locals = nil); end
end
module Sinatra::Templates::ContentTyped
  def content_type; end
  def content_type=(arg0); end
end
class Sinatra::Base
  def app; end
  def app=(arg0); end
  def call!(env); end
  def call(env); end
  def dispatch!; end
  def dump_errors!(boom); end
  def env; end
  def env=(arg0); end
  def error_block!(key, *block_params); end
  def filter!(type, base = nil); end
  def force_encoding(*args); end
  def forward; end
  def halt(*response); end
  def handle_exception!(boom); end
  def initialize(app = nil); end
  def invoke; end
  def options; end
  def params; end
  def params=(arg0); end
  def pass(&block); end
  def process_route(pattern, conditions, block = nil, values = nil); end
  def request; end
  def request=(arg0); end
  def response; end
  def response=(arg0); end
  def route!(base = nil, pass_block = nil); end
  def route_eval; end
  def route_missing; end
  def self.absolute_redirects; end
  def self.absolute_redirects=(val); end
  def self.absolute_redirects?; end
  def self.add_charset; end
  def self.add_charset=(val); end
  def self.add_charset?; end
  def self.add_filter(type, path = nil, **options, &block); end
  def self.after(path = nil, **options, &block); end
  def self.agent(pattern); end
  def self.app_file; end
  def self.app_file=(val); end
  def self.app_file?; end
  def self.before(path = nil, **options, &block); end
  def self.bind; end
  def self.bind=(val); end
  def self.bind?; end
  def self.build(app); end
  def self.call(env); end
  def self.caller_files; end
  def self.caller_locations; end
  def self.cleaned_caller(keep = nil); end
  def self.compile!(verb, path, block, **options); end
  def self.compile(path, route_mustermann_opts = nil); end
  def self.condition(name = nil, &block); end
  def self.configure(*envs); end
  def self.default_encoding; end
  def self.default_encoding=(val); end
  def self.default_encoding?; end
  def self.define_singleton(name, content = nil); end
  def self.delete(path, opts = nil, &bk); end
  def self.detect_rack_handler; end
  def self.development?; end
  def self.disable(*opts); end
  def self.dump_errors; end
  def self.dump_errors=(val); end
  def self.dump_errors?; end
  def self.empty_path_info; end
  def self.empty_path_info=(val); end
  def self.empty_path_info?; end
  def self.enable(*opts); end
  def self.environment; end
  def self.environment=(val); end
  def self.environment?; end
  def self.error(*codes, &block); end
  def self.errors; end
  def self.extensions; end
  def self.filters; end
  def self.force_encoding(data, encoding = nil); end
  def self.generate_method(method_name, &block); end
  def self.get(path, opts = nil, &block); end
  def self.handler_name; end
  def self.handler_name=(val); end
  def self.handler_name?; end
  def self.head(path, opts = nil, &bk); end
  def self.helpers(*extensions, &block); end
  def self.host_name(pattern); end
  def self.inherited(subclass); end
  def self.inline_templates=(file = nil); end
  def self.invoke_hook(name, *args); end
  def self.layout(name = nil, &block); end
  def self.link(path, opts = nil, &bk); end
  def self.lock; end
  def self.lock=(val); end
  def self.lock?; end
  def self.logging; end
  def self.logging=(val); end
  def self.logging?; end
  def self.method_override; end
  def self.method_override=(val); end
  def self.method_override?; end
  def self.methodoverride=(val); end
  def self.methodoverride?; end
  def self.middleware; end
  def self.mime_type(type, value = nil); end
  def self.mime_types(type); end
  def self.mustermann_opts; end
  def self.mustermann_opts=(val); end
  def self.mustermann_opts?; end
  def self.new!(*arg0); end
  def self.new(*args, &bk); end
  def self.not_found(&block); end
  def self.options(path, opts = nil, &bk); end
  def self.patch(path, opts = nil, &bk); end
  def self.port; end
  def self.port=(val); end
  def self.port?; end
  def self.post(path, opts = nil, &bk); end
  def self.prefixed_redirects; end
  def self.prefixed_redirects=(val); end
  def self.prefixed_redirects?; end
  def self.production?; end
  def self.protection; end
  def self.protection=(val); end
  def self.protection?; end
  def self.prototype; end
  def self.provides(*types); end
  def self.public=(value); end
  def self.public_dir; end
  def self.public_dir=(value); end
  def self.public_folder; end
  def self.public_folder=(val); end
  def self.public_folder?; end
  def self.put(path, opts = nil, &bk); end
  def self.quiet; end
  def self.quiet=(val); end
  def self.quiet?; end
  def self.quit!; end
  def self.raise_errors; end
  def self.raise_errors=(val); end
  def self.raise_errors?; end
  def self.register(*extensions, &block); end
  def self.reload_templates; end
  def self.reload_templates=(val); end
  def self.reload_templates?; end
  def self.reset!; end
  def self.root; end
  def self.root=(val); end
  def self.root?; end
  def self.route(verb, path, options = nil, &block); end
  def self.routes; end
  def self.run!(options = nil, &block); end
  def self.run; end
  def self.run=(val); end
  def self.run?; end
  def self.running?; end
  def self.running_server; end
  def self.running_server=(val); end
  def self.running_server?; end
  def self.server; end
  def self.server=(val); end
  def self.server?; end
  def self.session_secret; end
  def self.session_secret=(val); end
  def self.session_secret?; end
  def self.session_store; end
  def self.session_store=(val); end
  def self.session_store?; end
  def self.sessions; end
  def self.sessions=(val); end
  def self.sessions?; end
  def self.set(option, value = nil, ignore_setter = nil, &block); end
  def self.settings; end
  def self.setup_common_logger(builder); end
  def self.setup_custom_logger(builder); end
  def self.setup_default_middleware(builder); end
  def self.setup_logging(builder); end
  def self.setup_middleware(builder); end
  def self.setup_null_logger(builder); end
  def self.setup_protection(builder); end
  def self.setup_sessions(builder); end
  def self.setup_traps; end
  def self.show_exceptions; end
  def self.show_exceptions=(val); end
  def self.show_exceptions?; end
  def self.start!(options = nil, &block); end
  def self.start_server(handler, server_settings, handler_name); end
  def self.static; end
  def self.static=(val); end
  def self.static?; end
  def self.static_cache_control; end
  def self.static_cache_control=(val); end
  def self.static_cache_control?; end
  def self.stop!; end
  def self.strict_paths; end
  def self.strict_paths=(val); end
  def self.strict_paths?; end
  def self.suppress_messages?; end
  def self.synchronize(&block); end
  def self.template(name, &block); end
  def self.templates; end
  def self.test?; end
  def self.threaded; end
  def self.threaded=(val); end
  def self.threaded?; end
  def self.traps; end
  def self.traps=(val); end
  def self.traps?; end
  def self.unlink(path, opts = nil, &bk); end
  def self.use(middleware, *args, &block); end
  def self.use_code; end
  def self.use_code=(val); end
  def self.use_code?; end
  def self.user_agent(pattern); end
  def self.views; end
  def self.views=(val); end
  def self.views?; end
  def self.warn(message); end
  def self.x_cascade; end
  def self.x_cascade=(val); end
  def self.x_cascade?; end
  def settings; end
  def static!(options = nil); end
  def template_cache; end
  include Rack::Utils
  include Sinatra::Helpers
  include Sinatra::Templates
end
class Sinatra::Application < Sinatra::Base
  def self.app_file; end
  def self.app_file=(val); end
  def self.app_file?; end
  def self.logging; end
  def self.logging=(val); end
  def self.logging?; end
  def self.method_override; end
  def self.method_override=(val); end
  def self.method_override?; end
  def self.register(*extensions, &block); end
  def self.run; end
  def self.run=(val); end
  def self.run?; end
end
module Sinatra::Delegator
  def after(*args, &block); end
  def before(*args, &block); end
  def configure(*args, &block); end
  def delete(*args, &block); end
  def development?(*args, &block); end
  def disable(*args, &block); end
  def enable(*args, &block); end
  def error(*args, &block); end
  def get(*args, &block); end
  def head(*args, &block); end
  def helpers(*args, &block); end
  def layout(*args, &block); end
  def link(*args, &block); end
  def mime_type(*args, &block); end
  def not_found(*args, &block); end
  def options(*args, &block); end
  def patch(*args, &block); end
  def post(*args, &block); end
  def production?(*args, &block); end
  def put(*args, &block); end
  def register(*args, &block); end
  def self.delegate(*methods); end
  def self.target; end
  def self.target=(arg0); end
  def set(*args, &block); end
  def settings(*args, &block); end
  def template(*args, &block); end
  def test?(*args, &block); end
  def unlink(*args, &block); end
  def use(*args, &block); end
end
class Sinatra::Wrapper
  def call(env); end
  def helpers; end
  def initialize(stack, instance); end
  def inspect; end
  def settings; end
end
class Rack::Builder
  include Sinatra::Delegator
end
