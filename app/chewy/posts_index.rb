class PostsIndex < Chewy::Index
  settings analysis: {
    analyzer: {
      text_analyzer: {
        tokenizer: 'keyword',
        filter: ['lowercase']
      }
    }
  }
  define_type Post.all do
    field :name, type: 'string', value: -> { name.try(:downcase) },
                 analyzer: 'text_analyzer'
    field :title, type: 'string', value: -> { title.try(:downcase) },
                  analyzer: 'text_analyzer'
    field :content, type: 'string', value: -> { content.try(:downcase) },
                    analyzer: 'text_analyzer'
  end
end
