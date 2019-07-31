# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/mongo/all/mongo.rbi
#
# mongo-1.12.5
module Mongo
  def auths; end
  def auths=(arg0); end
end
module Mongo::Conversions
  def array_as_sort_parameters(value); end
  def hash_as_sort_parameters(value); end
  def sort_value(value); end
  def string_as_sort_parameters(value); end
end
class Object < BasicObject
end
class Hash
  def assert_valid_keys(*valid_keys); end
end
class String
  def to_bson_code; end
end
class Class < Module
  def mongo_thread_local_accessor(name, options = nil); end
end
class Mongo::ServerVersion
  def <=>(new); end
  def elements_include_mods?(*elements); end
  def initialize(version); end
  def to_a; end
  def to_array(version); end
  def to_s; end
  include Comparable
end
module Mongo::Support
  def format_order_clause(order); end
  def is_i?(value); end
  def normalize_seeds(seeds); end
  def ok?(doc); end
  def validate_db_name(db_name); end
  extend Mongo::Support
  include Mongo::Conversions
end
module Mongo::ThreadLocalVariableManager
  def thread_local; end
end
class Mongo::MongoRubyError < StandardError
end
class Mongo::MongoDBError < RuntimeError
  def error_code; end
  def initialize(message = nil, error_code = nil, result = nil); end
  def result; end
end
class Mongo::GridError < Mongo::MongoRubyError
end
class Mongo::GridFileNotFound < Mongo::GridError
end
class Mongo::GridMD5Failure < Mongo::GridError
end
class Mongo::MongoArgumentError < Mongo::MongoRubyError
end
class Mongo::ConnectionError < Mongo::MongoRubyError
end
class Mongo::ReplicaSetConnectionError < Mongo::ConnectionError
end
class Mongo::ConnectionTimeoutError < Mongo::MongoRubyError
end
class Mongo::NodeWithTagsNotFound < Mongo::MongoRubyError
end
class Mongo::ConnectionFailure < Mongo::MongoDBError
end
class Mongo::AuthenticationError < Mongo::MongoDBError
end
class Mongo::OperationFailure < Mongo::MongoDBError
end
class Mongo::ExecutionTimeout < Mongo::OperationFailure
end
class Mongo::WriteConcernError < Mongo::OperationFailure
end
class Mongo::OperationTimeout < SocketError
end
class Mongo::InvalidOperation < Mongo::MongoDBError
end
class Mongo::InvalidNSName < RuntimeError
end
class Mongo::InvalidSortValueError < Mongo::MongoRubyError
end
class Mongo::BulkWriteError < Mongo::OperationFailure
end
class Mongo::InvalidNonce < Mongo::OperationFailure
  def initialize(nonce, rnonce); end
  def nonce; end
  def rnonce; end
end
class Mongo::InvalidSignature < Mongo::OperationFailure
  def initialize(verifier, server_signature); end
  def server_signature; end
  def verifier; end
end
module Mongo::Authentication
  def add_auth(db_name, username, password = nil, source = nil, mechanism = nil, extra = nil); end
  def auth_command(selector, socket, db_name); end
  def clear_auths; end
  def copy_db_mongodb_cr(username, password, from_host, from_db, to_db); end
  def copy_db_scram(username, password, from_host, from_db, to_db); end
  def default_mechanism; end
  def get_nonce(db_name, opts = nil); end
  def issue_authentication(auth, opts = nil); end
  def issue_cr(auth, opts = nil); end
  def issue_gssapi(auth, opts = nil); end
  def issue_logout(db_name, opts = nil); end
  def issue_plain(auth, opts = nil); end
  def issue_scram(auth, opts = nil); end
  def issue_x509(auth, opts = nil); end
  def remove_auth(db_name); end
  def self.auth_key(username, password, nonce); end
  def self.hash_password(username, password); end
  def self.password_required?(mech); end
  def self.validate_credentials(auth); end
  def self.validate_mechanism(mechanism, raise_error = nil); end
end
module Mongo::Logging
  def instrument(name, payload = nil); end
  def log(level, msg); end
  def log_operation(name, payload, duration); end
  def self.instrumenter; end
  def self.instrumenter=(instrumenter); end
  def write_logging_startup_message; end
end
module Mongo::Logging::Instrumenter
  def self.instrument(name, payload = nil); end
end
module Mongo::ReadPreference
  def match_tag_sets(candidates, tag_sets = nil); end
  def read_pool(read_preference_override = nil); end
  def read_preference; end
  def select_near_pool(candidates, read_pref); end
  def select_near_pools(candidates, read_pref); end
  def select_pool(read_pref); end
  def select_secondary_pool(candidates, read_pref); end
  def self.cmd_read_pref(read_pref, selector); end
  def self.mongos(mode, tag_sets); end
  def self.reroute_cmd_primary?(read_pref, selector); end
  def self.secondary_ok?(selector); end
  def self.validate(value); end
end
module Mongo::WriteConcern
  def get_write_concern(opts, parent = nil); end
  def legacy_write_concern; end
  def self.gle?(write_concern); end
  def write_concern_from_legacy(opts); end
end
class Mongo::URIParser
  def authmechanism; end
  def authmechanismproperties; end
  def auths; end
  def authsource; end
  def connect; end
  def connect?; end
  def connection(extra_opts = nil, legacy = nil, sharded = nil); end
  def connection_options; end
  def connecttimeoutms; end
  def db_name; end
  def direct?; end
  def fsync; end
  def host; end
  def initialize(uri); end
  def journal; end
  def node_strings; end
  def nodes; end
  def parse_hosts(uri_without_protocol); end
  def parse_options(string_opts); end
  def pool_size; end
  def port; end
  def readpreference; end
  def readpreferencetags; end
  def replicaset; end
  def replicaset?; end
  def safe; end
  def slaveok; end
  def sockettimeoutms; end
  def ssl; end
  def validate_connect; end
  def w; end
  def wtimeout; end
  def wtimeoutms; end
end
class Mongo::Authentication::SCRAM
  def auth; end
  def auth_message; end
  def client_empty_message; end
  def client_final; end
  def client_final_message; end
  def client_first_message; end
  def client_key; end
  def client_proof(key, signature); end
  def client_signature(key, message); end
  def continue(reply); end
  def copy_db_continue(reply); end
  def copy_db_start; end
  def decoded_salt; end
  def finalize(reply); end
  def first_bare; end
  def h(string); end
  def hashed_password; end
  def hi(data); end
  def hmac(data, key); end
  def id; end
  def initialize(auth, hashed_password, opts = nil); end
  def iterations; end
  def nonce; end
  def payload_data; end
  def reply; end
  def rnonce; end
  def salt; end
  def salted_password; end
  def server_key; end
  def server_signature; end
  def start; end
  def stored_key(key); end
  def validate!(reply); end
  def validate_final_message!(reply); end
  def validate_first_message!(reply); end
  def verifier; end
  def without_proof; end
  def xor(first, second); end
end
module SocketUtil
  def auths; end
  def auths=(arg0); end
  def checkin; end
  def checkout; end
  def close; end
  def closed?; end
  def pid; end
  def pid=(arg0); end
  def pool; end
  def pool=(arg0); end
end
class Mongo::SSLSocket
  def connect; end
  def initialize(host, port, op_timeout = nil, connect_timeout = nil, opts = nil); end
  def read(length, buffer); end
  def send(data); end
  include SocketUtil
end
class Mongo::TCPSocket
  def connect(socket, socket_address); end
  def handle_connect(host, port); end
  def initialize(host, port, op_timeout = nil, connect_timeout = nil, opts = nil); end
  def read(maxlen, buffer); end
  def send(data); end
  include SocketUtil
end
class Mongo::UNIXSocket < Mongo::TCPSocket
  def initialize(socket_path, port = nil, op_timeout = nil, connect_timeout = nil, opts = nil); end
end
class Mongo::Node
  def ==(other); end
  def =~(other); end
  def active?; end
  def address; end
  def address=(arg0); end
  def arbiters; end
  def check_set_membership(config); end
  def check_set_name(config); end
  def client; end
  def client=(arg0); end
  def close; end
  def config; end
  def connect; end
  def connected?; end
  def eql?(other); end
  def hash; end
  def healthy?; end
  def host; end
  def host=(arg0); end
  def host_port; end
  def host_string; end
  def initialize(client, host_port); end
  def inspect; end
  def last_state; end
  def last_state=(arg0); end
  def max_bson_size; end
  def max_message_size; end
  def max_wire_version; end
  def max_write_batch_size; end
  def min_wire_version; end
  def node_list; end
  def port; end
  def port=(arg0); end
  def primary?; end
  def secondary?; end
  def set_config; end
  def socket; end
  def socket=(arg0); end
  def tags; end
  def update_max_sizes; end
  def usable_socket; end
  def wire_version_feature?(feature); end
end
class Mongo::Pool
  def address; end
  def address=(arg0); end
  def authenticate_existing; end
  def check_auths(socket); end
  def check_prune; end
  def checked_out; end
  def checked_out=(arg0); end
  def checkin(socket); end
  def checkout; end
  def checkout_existing_socket(socket = nil); end
  def checkout_new_socket; end
  def client; end
  def client=(arg0); end
  def close(opts = nil); end
  def close_sockets(sockets); end
  def closed?; end
  def healthy?; end
  def host; end
  def host=(arg0); end
  def host_port; end
  def host_string; end
  def initialize(client, host, port, opts = nil); end
  def inspect; end
  def logout_existing(database); end
  def node; end
  def node=(arg0); end
  def ping; end
  def ping_time; end
  def port; end
  def port=(arg0); end
  def prune_threads; end
  def refresh_ping_time; end
  def size; end
  def size=(arg0); end
  def tags; end
  def timeout; end
  def timeout=(arg0); end
  def up?; end
end
class Mongo::PoolManager
  def arbiters; end
  def assign_primary(member); end
  def assign_secondary(member); end
  def check_connection_health; end
  def client; end
  def clone_state; end
  def close(opts = nil); end
  def closed?; end
  def connect; end
  def connect_to_members; end
  def copy_members; end
  def disconnect_old_members; end
  def discovered_seeds; end
  def get_valid_seed_node; end
  def hosts; end
  def initialize(client, seeds = nil); end
  def initialize_immutable_state; end
  def initialize_mutable_state; end
  def initialize_pools(members); end
  def inspect; end
  def max_bson_size; end
  def max_message_size; end
  def max_wire_version; end
  def min_wire_version; end
  def pools; end
  def primary; end
  def primary_pool; end
  def read; end
  def refresh!(additional_seeds); end
  def refresh_required?; end
  def secondaries; end
  def secondary_pools; end
  def seeds; end
  def update_max_sizes; end
  def validate_existing_member(current_config, member); end
  include Mongo::ThreadLocalVariableManager
end
class Mongo::ShardingPoolManager < Mongo::PoolManager
  def best(members); end
  def check_connection_health; end
  def connect; end
  def inspect; end
end
class Mongo::CollectionWriter
  def batch_write(op_type, documents, check_keys = nil, opts = nil); end
  def batch_write_incremental(op_type, documents, check_keys = nil, opts = nil); end
  def batch_write_partition(op_type, documents, check_keys, opts); end
  def initialize(collection); end
  def ordered_group_by_first(pairs); end
  def send_bulk_write_command(op_type, documents, check_keys, opts, collection_name = nil); end
  def sort_by_first_sym(pairs); end
  include Mongo::Logging
  include Mongo::WriteConcern
end
class Mongo::CollectionOperationWriter < Mongo::CollectionWriter
  def batch_message_append(message, serialized_doc, write_concern); end
  def batch_message_initialize(message, op_type, continue_on_error, write_concern); end
  def batch_message_send(message, op_type, batch_docs, write_concern, continue_on_error); end
  def batch_write_max_sizes(write_concern); end
  def bulk_execute(ops, options, opts = nil); end
  def initialize(collection); end
  def send_write_operation(op_type, selector, doc_or_docs, check_keys, opts, write_concern, collection_name = nil); end
end
class Mongo::CollectionCommandWriter < Mongo::CollectionWriter
  def batch_message_append(message, serialized_doc, write_concern); end
  def batch_message_initialize(message, op_type, continue_on_error, write_concern); end
  def batch_message_send(message, op_type, batch_docs, write_concern, continue_on_error); end
  def batch_write_max_sizes(write_concern); end
  def bulk_execute(ops, options, opts = nil); end
  def initialize(collection); end
  def send_write_command(op_type, selector, doc_or_docs, check_keys, opts, write_concern, collection_name = nil); end
end
class Mongo::Collection
  def <<(doc_or_docs, opts = nil); end
  def [](name); end
  def acceptable_latency; end
  def acceptable_latency=(arg0); end
  def aggregate(pipeline = nil, opts = nil); end
  def batch_write(op_type, documents, check_keys = nil, opts = nil); end
  def capped; end
  def capped?; end
  def command_options(opts); end
  def command_writer; end
  def count(opts = nil); end
  def create_index(spec, opts = nil); end
  def db; end
  def distinct(key, query = nil, opts = nil); end
  def drop; end
  def drop_index(name); end
  def drop_indexes; end
  def ensure_index(spec, opts = nil); end
  def find(selector = nil, opts = nil); end
  def find_and_modify(opts = nil); end
  def find_one(spec_or_object_id = nil, opts = nil); end
  def generate_index_name(spec); end
  def generate_indexes(field_spec, name, opts); end
  def group(opts, condition = nil, initial = nil, reduce = nil, finalize = nil); end
  def hint; end
  def hint=(hint = nil); end
  def index_information; end
  def index_name(spec); end
  def initialize(name, db, opts = nil); end
  def initialize_ordered_bulk_op; end
  def initialize_unordered_bulk_op; end
  def insert(doc_or_docs, opts = nil); end
  def map_reduce(map, reduce, opts = nil); end
  def mapreduce(map, reduce, opts = nil); end
  def name; end
  def named_hint=(hint = nil); end
  def new_group(opts = nil); end
  def normalize_hint_fields(hint); end
  def operation_writer; end
  def options; end
  def parallel_scan(num_cursors, opts = nil); end
  def parse_index_spec(spec); end
  def pk_factory; end
  def read; end
  def read=(arg0); end
  def remove(selector = nil, opts = nil); end
  def rename(new_name); end
  def save(doc, opts = nil); end
  def send_write(op_type, selector, doc_or_docs, check_keys, opts, collection_name = nil); end
  def size(opts = nil); end
  def stats; end
  def tag_sets; end
  def tag_sets=(arg0); end
  def update(selector, document, opts = nil); end
  def validate_index_types(*types); end
  def write_concern; end
  include Mongo::Logging
  include Mongo::WriteConcern
end
class Mongo::BulkWriteCollectionView
  def append(h, key, obj); end
  def collection; end
  def concat(h, key, a); end
  def execute(opts = nil); end
  def find(q); end
  def hash_except(h, *keys); end
  def hash_select(h, *keys); end
  def initialize(collection, options = nil); end
  def initialize_copy(other); end
  def insert(document); end
  def inspect; end
  def merge_index(h, exchange); end
  def merge_indexes(a, exchange); end
  def merge_result(errors, exchanges); end
  def nil_tally(h, key, n); end
  def op_args; end
  def op_args_set(op, value); end
  def op_push(op); end
  def ops; end
  def options; end
  def remove; end
  def remove_one; end
  def replace_doc?(doc); end
  def replace_one(u); end
  def tally(h, key, n); end
  def update(u); end
  def update_doc?(doc); end
  def update_one(u); end
  def upsert!(value = nil); end
  def upsert(value = nil); end
  include Mongo::WriteConcern
end
class Mongo::Cursor
  def acceptable_latency; end
  def add_option(opt); end
  def alive?; end
  def batch_size(size = nil); end
  def check_command_cursor; end
  def check_modifiable; end
  def checkin_socket(sock); end
  def checkout_socket_from_connection; end
  def close; end
  def close_cursor_if_query_complete; end
  def closed?; end
  def collection; end
  def comment; end
  def compile_regex; end
  def compile_regex?; end
  def construct_query_message; end
  def construct_query_spec; end
  def convert_fields_for_query(fields); end
  def count(skip_and_limit = nil); end
  def cursor_id; end
  def each; end
  def exhaust?(opts = nil); end
  def explain; end
  def fields; end
  def full_collection_name; end
  def generate_index_name(spec); end
  def has_next?; end
  def hint; end
  def initialize(collection, opts = nil); end
  def inspect; end
  def instrument_payload; end
  def limit(number_to_return = nil); end
  def max_time_ms(max_time_ms = nil); end
  def needs_read_pref?; end
  def next; end
  def next_document; end
  def num_remaining; end
  def options; end
  def order; end
  def pin_pool?(response); end
  def query_contains_special_fields?; end
  def query_options_hash; end
  def query_opts; end
  def read; end
  def refresh; end
  def remove_option(opt); end
  def rewind!; end
  def selector; end
  def send_get_more; end
  def send_initial_query; end
  def show_disk_loc; end
  def skip(number_to_skip = nil); end
  def snapshot; end
  def sort(order, direction = nil); end
  def tag_sets; end
  def timeout; end
  def to_a; end
  def transformer; end
  include Enumerable
  include Mongo::Constants
  include Mongo::Conversions
  include Mongo::Logging
  include Mongo::ReadPreference
end
class Mongo::DB
  def [](name, opts = nil); end
  def acceptable_latency; end
  def acceptable_latency=(arg0); end
  def add_stored_function(function_name, code); end
  def add_user(username, password = nil, read_only = nil, opts = nil); end
  def authenticate(username, password = nil, save_auth = nil, source = nil, mechanism = nil, extra = nil); end
  def cache_time; end
  def cache_time=(arg0); end
  def client; end
  def collection(name, opts = nil); end
  def collection_names; end
  def collections; end
  def collections_info(coll_name = nil); end
  def command(selector, opts = nil); end
  def connection; end
  def create_collection(name, opts = nil); end
  def create_or_update_user(command, username, password, read_only, opts); end
  def dereference(dbref); end
  def drop_collection(name); end
  def drop_index(collection_name, index_name); end
  def error?; end
  def eval(code, *args); end
  def full_collection_name(collection_name); end
  def get_last_error(opts = nil); end
  def index_information(collection_name); end
  def initialize(name, client, opts = nil); end
  def issue_authentication(username, password, save_auth = nil, opts = nil); end
  def issue_logout(opts = nil); end
  def legacy_add_user(username, password = nil, read_only = nil, opts = nil); end
  def legacy_collection_names; end
  def legacy_collections_info(coll_name = nil); end
  def legacy_list_indexes(collection_name); end
  def logout(opts = nil); end
  def name; end
  def ok?(doc); end
  def pk_factory; end
  def pk_factory=(pk_factory); end
  def previous_error; end
  def profiling_info; end
  def profiling_level; end
  def profiling_level=(level); end
  def read; end
  def read=(arg0); end
  def remove_stored_function(function_name); end
  def remove_user(username); end
  def rename_collection(from, to); end
  def reset_error_history; end
  def stats; end
  def strict=(value); end
  def strict?; end
  def system_command_collection; end
  def tag_sets; end
  def tag_sets=(arg0); end
  def validate_collection(name); end
  def write_concern; end
  include Mongo::WriteConcern
end
module Mongo::GridExt
end
module Mongo::GridExt::InstanceMethods
  def exist?(selector); end
end
class Mongo::Grid
  def default_grid_io_opts; end
  def delete(id); end
  def get(id); end
  def initialize(db, fs_name = nil); end
  def put(data, opts = nil); end
  include Mongo::GridExt::InstanceMethods
end
class Mongo::GridFileSystem
  def default_grid_io_opts(filename = nil); end
  def delete(filename = nil); end
  def initialize(db, fs_name = nil); end
  def open(filename, mode, opts = nil); end
  def unlink(filename = nil); end
  include Mongo::GridExt::InstanceMethods
end
class Mongo::GridIO
  def [](key); end
  def []=(key, value); end
  def cache_chunk_data; end
  def check_existing_file; end
  def chunk_size; end
  def client_md5; end
  def close; end
  def content_type; end
  def create_chunk(n); end
  def data(length = nil); end
  def each; end
  def eof; end
  def eof?; end
  def file_length; end
  def file_position; end
  def filename; end
  def files_id; end
  def get_chunk(n); end
  def get_content_type; end
  def get_md5; end
  def getc; end
  def gets(separator = nil, length = nil); end
  def init_read; end
  def init_write(opts); end
  def initialize(files, chunks, filename, mode, opts = nil); end
  def inspect; end
  def metadata; end
  def pos; end
  def read(length = nil); end
  def read_all; end
  def read_length(length); end
  def read_to_character(character = nil, length = nil); end
  def read_to_string(string = nil, length = nil); end
  def rewind; end
  def save_chunk(chunk); end
  def seek(pos, whence = nil); end
  def server_md5; end
  def tell; end
  def to_mongo_object; end
  def upload_date; end
  def write(io); end
  def write_string(string); end
  include Mongo::WriteConcern
end
module Mongo::Networking
  def add_message_headers(message, operation); end
  def build_command_message(db_name, query, projection = nil, skip = nil, limit = nil); end
  def build_get_last_error_message(db_name, write_concern); end
  def check_response_flags(flags); end
  def get_request_id; end
  def new_binary_string; end
  def read_documents(number_received, sock, opts); end
  def receive(sock, cursor_id, opts = nil); end
  def receive_data(length, socket); end
  def receive_header(sock, expected_response, exhaust = nil); end
  def receive_message(operation, message, log_message = nil, socket = nil, command = nil, read = nil, exhaust = nil, compile_regex = nil); end
  def receive_message_on_socket(length, socket); end
  def receive_response_header(sock); end
  def send_message(operation, message, opts = nil); end
  def send_message_on_socket(packed_message, socket); end
  def send_message_with_gle(operation, message, db_name, log_message = nil, write_concern = nil); end
end
class Mongo::MongoClient
  def [](name); end
  def acceptable_latency; end
  def active?; end
  def apply_saved_authentication; end
  def authenticate_pools; end
  def auths; end
  def check_is_master(node); end
  def check_opts(opts); end
  def check_wire_version_in_range; end
  def checkin(socket); end
  def checkout_reader(read_preference); end
  def checkout_writer; end
  def close; end
  def connect; end
  def connect_timeout; end
  def connected?; end
  def copy_database(from, to, from_host = nil, username = nil, password = nil, mechanism = nil); end
  def database_info; end
  def database_names; end
  def db(name = nil, opts = nil); end
  def drop_database(database); end
  def host; end
  def host_port; end
  def host_to_try; end
  def initialize(*args); end
  def lock!; end
  def locked?; end
  def logger; end
  def logout_pools(database); end
  def max_bson_size; end
  def max_message_size; end
  def max_wire_version; end
  def max_write_batch_size; end
  def min_wire_version; end
  def mongos?; end
  def op_timeout; end
  def parse_init(host, port, opts); end
  def pin_pool(pool, read_prefs); end
  def ping; end
  def pinned_pool; end
  def pool_size; end
  def pool_timeout; end
  def port; end
  def primary; end
  def primary?; end
  def primary_pool; end
  def primary_wire_version_feature?(feature); end
  def read; end
  def read_pool; end
  def read_primary?; end
  def reconnect; end
  def refresh; end
  def self.from_uri(uri = nil, extra_opts = nil); end
  def self.multi(nodes, opts = nil); end
  def server_info; end
  def server_version; end
  def set_primary(node); end
  def setup(opts); end
  def size; end
  def slave_ok?; end
  def socket_class; end
  def socket_opts; end
  def tag_sets; end
  def unlock!; end
  def unpin_pool; end
  def use_write_command?(write_concern); end
  def valid_opts; end
  def wire_version_feature?(feature); end
  def write_concern; end
  extend Anonymous_Module_8
  include Anonymous_Module_8
  include Mongo::Authentication
  include Mongo::Logging
  include Mongo::Networking
  include Mongo::WriteConcern
end
module Anonymous_Module_8
  def connections; end
  def connections=(val); end
end
class Mongo::MongoReplicaSetClient < Mongo::MongoClient
  def arbiters; end
  def authenticate_pools; end
  def checkin(socket); end
  def checkout; end
  def checkout_reader(read_pref = nil); end
  def checkout_writer; end
  def close(opts = nil); end
  def connect(force = nil); end
  def connected?; end
  def connecting?; end
  def ensure_manager; end
  def get_socket_from_pool(pool); end
  def hard_refresh!; end
  def host; end
  def hosts; end
  def initialize(*args); end
  def inspect; end
  def local_manager; end
  def logout_pools(database); end
  def manager; end
  def max_bson_size; end
  def max_message_size; end
  def max_wire_version; end
  def max_write_batch_size; end
  def min_wire_version; end
  def nodes; end
  def pin_pool(pool, read_preference); end
  def pinned_pool; end
  def pools; end
  def port; end
  def primary; end
  def primary?; end
  def primary_pool; end
  def primary_wire_version_feature?(feature); end
  def read_primary?; end
  def reconnect; end
  def refresh(opts = nil); end
  def refresh_interval; end
  def refresh_mode; end
  def refresh_version; end
  def replica_set_name; end
  def reset_connection; end
  def secondaries; end
  def secondary_pool; end
  def secondary_pools; end
  def seeds; end
  def setup(opts); end
  def slave_ok?; end
  def sync_refresh; end
  def tag_map; end
  def unpin_pool; end
  def valid_opts; end
  include Mongo::ReadPreference
  include Mongo::ThreadLocalVariableManager
end
class Mongo::MongoShardedClient < Mongo::MongoReplicaSetClient
  def checkout(&block); end
  def connect(force = nil); end
  def connected?; end
  def hard_refresh!; end
  def initialize(*args); end
  def inspect; end
  def manager; end
  def refresh_interval; end
  def refresh_mode; end
  def refresh_version; end
  def seeds; end
  def self.from_uri(uri, options = nil); end
  def slave_ok?; end
  def valid_opts; end
  include Mongo::ThreadLocalVariableManager
end
module Mongo::LegacyWriteConcern
  def safe; end
  def safe=(value); end
  def self.from_uri(uri = nil, extra_opts = nil); end
end
class Mongo::Connection < Mongo::MongoClient
  def initialize(*args); end
  include Mongo::LegacyWriteConcern
end
class Mongo::ReplSetConnection < Mongo::MongoReplicaSetClient
  def initialize(*args); end
  include Mongo::LegacyWriteConcern
end
class Mongo::ShardedConnection < Mongo::MongoShardedClient
  def initialize(*args); end
  include Mongo::LegacyWriteConcern
end
module Mongo::Constants
end
module Mongo::ErrorCode
end