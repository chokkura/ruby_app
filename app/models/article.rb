class Article < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10}

  # Elasticsearchのマッピングを設定
  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :title, analyzer: 'english', index_options: 'offsets'
      indexes :content, analyzer: 'english'
    end
  end

  def as_indexed_json(options={})
    self.as_json(
      only: [:title, :content]
    )
  end
end
