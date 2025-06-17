# frozen_string_literal: true

LangchainrbRails.configure do |config|
  config.vectorsearch = Langchain::Vectorsearch::Pinecone.new(
    llm: Langchain::LLM::OpenAI.new(api_key: ENV["OPENAI_API_KEY"]),
    environment: ENV["PINECONE_ENVIRONMENT"],
    api_key: ENV["PINECONE_API_KEY"],
    index_name: ENV["PINECONE_INDEX"]
  )
end
