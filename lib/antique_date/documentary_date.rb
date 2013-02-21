module AntiqueDate
  
  class DocumentaryDate
    @regime = nil
    @verbatim = nil
    
    # # proleptic Gregorian
    # def to_gregorian
#       
    # end
#     
    
    # produces a YYYY-MM-DD string resembling ISO-8601 containing a version of the date on the document with year normalized to a January 1 New Year's Day.
    # No proleptization is done, so "February 11, 1731/2" becomes '1732-02-11' rather than '1732-02-22'
    # For missing values, a mid-point is selected, so that 'July 1800' yields '1800-06-31' and 
    def to_searchable
      
    end
    
    # produces a YYYY-MM_DD string similar to that produced by to_searchable, except that
    def to_sortable(alphabetic=true)
      
    end
  end
end