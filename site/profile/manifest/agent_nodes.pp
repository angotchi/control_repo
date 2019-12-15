class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.anne.local':}
  dockeragent::node {db.anne.local':}
}
