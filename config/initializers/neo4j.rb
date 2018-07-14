# frozen_string_literal: true

require 'neo4j/core/cypher_session/adaptors/http'

module Neo4j
  neo4j_adaptor = Core::CypherSession::Adaptors::HTTP.new(ENV['NEO4J_DB_URL'])
  ActiveBase.on_establish_session { Core::CypherSession.new(neo4j_adaptor) }
end
