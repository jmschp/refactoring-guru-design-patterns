# rubocop:disable Naming/FileName, Style/FrozenStringLiteralComment, Style/Documentation

class DocumentFactory
  # Factory Method
  # Can also implement a default behavior, like for example create a text document
  def create_document
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # Common behavior for documents
  # The main responsibility of the creator might not be actually creating objects
  def save
    document = create_document
    document.save
  end
end

class TextDocumentFactory < DocumentFactory
  def create_document
    # Specific logic to create a TextDocument
    TextDocument.new
  end
end

class SpreadsheetDocumentFactory < DocumentFactory
  def create_document
    # Specific logic to create a SpreadsheetDocument
    SpreadsheetDocument.new
  end
end

class Document
  def save
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class TextDocument < Document
  def save
    puts 'Saving a text document'
    self
  end
end

class SpreadsheetDocument < Document
  def save
    puts 'Saving a spreadsheet document'
    self
  end
end

# client
def document_manager(creator)
  puts 'As a client document manager I work with any type of document.'
  creator.new.save
end

puts document_manager(TextDocumentFactory)
puts document_manager(SpreadsheetDocumentFactory)

# rubocop:enable Naming/FileName, Style/FrozenStringLiteralComment, Style/Documentation
