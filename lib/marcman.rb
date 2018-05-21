# coding: utf-8
require "marcman/constants"
require "marcman/errors"
require "marcman/fields"
require "marcman/version"
require "pp"

module Marcman
  def self.getFieldFromCode(code)
    unless code =~ /[0-9Xx]{3}/
      raise BadMarcFieldFormatError.new(
              "Sorry, \"%s\" is not a correct MARC field code format."  % code)
    end

    code = code.upcase
    if MARC[code].nil?
      raise NoMarcFieldError.new("No MARC field with the code %s" % code)
    end
    return [code, MARC[code]]
  end

  def self.formatRepeat(r, show)
    return "" unless show

    if r == false
      return " (non-repeatable)"
    end

    return " (repeatable)"
  end
  
  def self.formatIndicators(code, ind)
    label = ind == 1 ? "First" : "Second"
    indicator = MARC[code][:indicators][ind - 1]
    if indicator == :undefined
      return ["  %s indicator is undefined" % label]
    end

    return ["  %s indicator: %s" % [label, indicator[:definition]]] +
           indicator[:values].map{|k, v| "    %s - %s" % [k, v]}
  end

  def self.addLinkage(code)
    linkage = (MARC[code][:linkage] != false)
    fieldlink = (MARC[code][:fieldlink] != false)

    if linkage and fieldlink
      return MARC[code][:subfields].merge(LINKAGE).merge(FIELDLINK)
    end

    if fieldlink
      return MARC[code][:subfields].merge(FIELDLINK)
    end

    if linkage
      return MARC[code][:subfields].merge(LINKAGE)
    end

    return MARC[code][:subfields]
  end

  def self.formatSubfields(code, showrepeat)
    sf = addLinkage(code)
    # Sort characters before numbers
    numkeys, charkeys = sf.partition{|a| a[0][1] >= "0" and a[0][1] <= "9"}
    (charkeys.sort + numkeys.sort).
      map{|k, v| "    %s - %s%s" % [k, v[:definition],
                                    formatRepeat(v[:repeat], showrepeat)]}
  end
    
end
