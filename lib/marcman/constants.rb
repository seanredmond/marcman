module Marcman
    # Constants for widely used subfield definitions. These are roughly in
  # descending order of use
  
  LINKAGE = {"$6"=>{:definition=>"Linkage", :repeat=>false}}
  FIELDLINK = {"$8"=>{:definition=>"Field link and sequence number", :repeat=>true}}

  MATSPEC = {:definition=>"Materials specified", :repeat=>false}
  RWURI   = {:definition=>"Real World Object URI"}
  ARECNUM = {:definition=>"Authority record control number or standard number"}
  RELAT   = {:definition=>"Relationship"}
  ISSNR   = {:definition=>"International Standard Serial Number"}
  ISSNNR  = {:definition=>"International Standard Serial Number",
             :repeat=>false}
  MISCINF = {:definition=>"Miscellaneous information"}
  INSTAPP = {:definition=>"Institution to which field applies", :repeat=>false}
  SOURCE  = {:definition=>"Source", :repeat=>false}
  NAMEPRT = {:definition=>"Name of part/section of a work"}
  RELINFO = {:definition=>"Relationship information"}
  UNIFORM = {:definition=>"Uniform title", :repeat=>false}
  MEDIUM  = {:definition=>"Medium", :repeat=>false}
  RELATOR = {:definition=>"Relator term"}
  CTRLSUB = {:definition=>"Control subfield", :repeat=>false}  
  NOTER   = {:definition=>"Note"}
  FORMSUB = {:definition=>"Form subheading"}
  TITLENR = {:definition=>"Title", :repeat=>false}
  LANGNR  = {:definition=>"Language of a work", :repeat=>false}
  DATENR  = {:definition=>"Date of a work", :repeat=>false}
  PUBNOTE = {:definition=>"Public note"}
  RECCTRL = {:definition=>"Record control number"}
  WRKTITL = {:definition=>"Title of a work", :repeat=>false}
  QUALINF = {:definition=>"Qualifying information", :repeat=>false}
  ISBNR   = {:definition=>"International Standard Book Number"}
  PLCPUB  = {:definition=>"Place, publisher, and date of publication",
             :repeat=>false}
  EDTNNR  = {:definition=>"Edition", :repeat=>false}
  RELPRTS = {:definition=>"Related parts"}
  PHYSDSC = {:definition=>"Physical description", :repeat=>false}
  MSDETL  = {:definition=>"Material-specific details", :repeat=>false}
  VRSNR   = {:definition=>"Version"}
  OIID    = {:definition=>"Other item identifier"}  
  NPUBNOT = {:definition=>"Nonpublic note"}
  CODENR  = {:definition=>"CODEN designation", :repeat=>false}
  MAINENT = {:definition=>"Main entry heading", :repeat=>false}
  NUMPART = {:definition=>"Number of part/section of a work"}
  TECHREP = {:definition=>"Standard Technical Report Number", :repeat=>false}  
  SRCTERM = {:definition=>"Source of term", :repeat=>false}
  RELSERD = {:definition=>"Series data for related item"}
  REPNUM  = {:definition=>"Report number"}  
  MUSKEY  = {:definition=>"Key for music", :repeat=>false}
  MUSMED  = {:definition=>"Medium of performance for music"}
  HEADSRC = {:definition=>"Source of heading or term", :repeat=>false}
  AFFIL   = {:definition=>"Affiliation", :repeat=>false}
  GEOSUB  = {:definition=>"Geographic subdivision"}
  CRONSUB = {:definition=>"Chronological subdivision"}
  FRMSUBD = {:definition=>"Form subdivision"}
  ARRANGE = {:definition=>"Arranged statement for music", :repeat=>false}
  GNRLSUB = {:definition=>"General subdivision"}
  ITEMNUM = {:definition=>"Item number", :repeat=>false}
end
