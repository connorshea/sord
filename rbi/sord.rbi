# typed: strong
module Sord
  module Logging
    sig { returns(T::Array[Proc]) }
    def self.hooks(); end

    sig { returns(T::Boolean) }
    def self.silent?(); end

    sig { params(value: T::Boolean).void }
    def self.silent=(value); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig do
      params(
        kind: Symbol,
        header: String,
        msg: String,
        item: YARD::CodeObjects::Base,
        indent_level: Integer
      ).returns(T.untyped)
    end
    def self.generic(kind, header, msg, item, indent_level = 0); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig { params(msg: String, item: YARD::CodeObjects::Base, indent_level: Integer).returns(T.untyped) }
    def self.warn(msg, item = nil, indent_level = 0); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig { params(msg: String, item: YARD::CodeObjects::Base, indent_level: Integer).returns(T.untyped) }
    def self.info(msg, item = nil, indent_level = 0); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig { params(msg: String, item: YARD::CodeObjects::Base, indent_level: Integer).returns(T.untyped) }
    def self.duck(msg, item = nil, indent_level = 0); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig { params(msg: String, item: YARD::CodeObjects::Base, indent_level: Integer).returns(T.untyped) }
    def self.error(msg, item = nil, indent_level = 0); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig { params(msg: String, item: YARD::CodeObjects::Base, indent_level: Integer).returns(T.untyped) }
    def self.infer(msg, item = nil, indent_level = 0); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig { params(msg: String, item: YARD::CodeObjects::Base, indent_level: Integer).returns(T.untyped) }
    def self.omit(msg, item = nil, indent_level = 0); end

    # sord omit - no YARD type given for "msg", using T.untyped
    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig { params(msg: T.untyped, item: YARD::CodeObjects::Base, indent_level: Integer).returns(T.untyped) }
    def self.done(msg, item = nil, indent_level = 0); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig do
      params(
        kind: Symbol,
        msg: String,
        item: YARD::CodeObjects::Base,
        indent_level: Integer
      ).returns(T.untyped)
    end
    def self.invoke_hooks(kind, msg, item, indent_level = 0); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig { params(blk: T.proc.params(kind: Symbol, msg: String, item: YARD::CodeObjects::Base, indent_level: Integer).returns(T.untyped)).returns(T.untyped) }
    def self.add_hook(&blk); end
  end

  module Resolver
    # sord omit - no YARD return type given, using T.untyped
    sig { returns(T.untyped) }
    def self.prepare(); end

    # sord omit - no YARD return type given, using T.untyped
    sig { returns(T.untyped) }
    def self.clear(); end

    # sord omit - no YARD type given for "name", using T.untyped
    # sord omit - no YARD return type given, using T.untyped
    sig { params(name: T.untyped).returns(T.untyped) }
    def self.paths_for(name); end

    # sord omit - no YARD type given for "name", using T.untyped
    # sord omit - no YARD return type given, using T.untyped
    sig { params(name: T.untyped).returns(T.untyped) }
    def self.path_for(name); end

    # sord omit - no YARD return type given, using T.untyped
    sig { returns(T.untyped) }
    def self.builtin_classes(); end

    # sord omit - no YARD type given for "name", using T.untyped
    # sord omit - no YARD type given for "item", using T.untyped
    sig { params(name: T.untyped, item: T.untyped).returns(T::Boolean) }
    def self.resolvable?(name, item); end
  end

  class RbiGenerator
    sig { returns(T::Array[String]) }
    def rbi_contents(); end

    sig { returns(Integer) }
    def object_count(); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    sig { returns(T::Array[[String, YARD::CodeObjects::Base, Integer]]) }
    def warnings(); end

    sig { returns(T::Boolean) }
    def next_item_is_first_in_namespace(); end

    # sord infer - inferred type of parameter "value" as T::Boolean using getter's return type
    sig { params(value: T::Boolean).returns(T::Boolean) }
    def next_item_is_first_in_namespace=(value); end

    sig { params(options: Hash).returns(RbiGenerator) }
    def initialize(options); end

    sig { void }
    def count_namespace(); end

    sig { void }
    def count_method(); end

    sig { void }
    def add_blank(); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    sig { params(item: YARD::CodeObjects::Base, indent_level: Integer).returns(Integer) }
    def add_mixins(item, indent_level); end

    sig { params(params: T::Array[String], returns: String, indent_level: Integer).void }
    def add_signature(params, returns, indent_level); end

    # sord warn - YARD::CodeObjects::NamespaceObject wasn't able to be resolved to a constant in this project
    sig { params(item: YARD::CodeObjects::NamespaceObject, indent_level: Integer).void }
    def add_methods(item, indent_level); end

    # sord warn - YARD::CodeObjects::NamespaceObject wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig { params(item: YARD::CodeObjects::NamespaceObject, indent_level: Integer).returns(T.untyped) }
    def add_namespace(item, indent_level = 0); end

    sig { returns(String) }
    def generate(); end

    sig { params(filename: T.nilable(String)).void }
    def run(filename); end
  end

  module TypeConverter
    sig { params(params: String).returns(T::Array[String]) }
    def self.split_type_parameters(params); end

    # sord warn - YARD::CodeObjects::Base wasn't able to be resolved to a constant in this project
    # sord omit - no YARD return type given, using T.untyped
    sig do
      params(
        yard: T.any(T::Boolean, Array, String),
        item: YARD::CodeObjects::Base,
        indent_level: Integer,
        replace_errors_with_untyped: T::Boolean
      ).returns(T.untyped)
    end
    def self.yard_to_sorbet(yard, item = nil, indent_level = 0, replace_errors_with_untyped = false); end
  end
end