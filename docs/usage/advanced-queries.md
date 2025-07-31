# Advanced Queries

WINGMAN's graph database allows for powerful querying capabilities to extract meaningful insights from your security data. This guide covers advanced query techniques and examples.

## Cypher Query Language

WINGMAN uses the Cypher query language for querying the graph database. Here are some advanced query patterns:

### Pattern Matching

```cypher
// Find all vulnerabilities affecting critical assets
MATCH (a:Asset {critical: true})<-[:AFFECTS]-(v:Vulnerability)
RETURN a.name, collect(v.cve_id) as vulnerabilities
```

### Path Finding

```cypher
// Find the shortest path between two assets
MATCH path = shortestPath((a1:Asset {name: 'Web Server'})-[*]-(a2:Asset {name: 'Database'}))
RETURN path
```

### Temporal Queries

```cypher
// Find all vulnerabilities discovered in the last 30 days
MATCH (v:Vulnerability)
WHERE v.discovered >= date().duration('P30D')
RETURN v.cve_id, v.severity, v.discovered
```

## Performance Optimization

### Indexing

```cypher
// Create an index on commonly queried properties
CREATE INDEX asset_name_index IF NOT EXISTS
FOR (a:Asset) ON (a.name);
```

### Query Profiling

Use `EXPLAIN` to analyze query performance:

```cypher
EXPLAIN
MATCH (a:Asset)-[r:CONNECTS_TO]->()
RETURN a.name, count(r) as connection_count
ORDER BY connection_count DESC
LIMIT 10;
```

## Common Query Patterns

### Asset Inventory

```cypher
// Get a complete asset inventory with their owners
MATCH (a:Asset)-[:OWNED_BY]->(o:Owner)
RETURN a.name, a.type, o.name as owner, a.critical
ORDER BY a.type, a.name;
```

### Vulnerability Impact Analysis

```cypher
// Find vulnerabilities affecting multiple critical assets
MATCH (a:Asset {critical: true})<-[:AFFECTS]-(v:Vulnerability)
WITH v, count(a) as affected_assets
WHERE affected_assets > 1
RETURN v.cve_id, v.severity, v.title, affected_assets
ORDER BY affected_assets DESC;
```

### Compliance Status

```cypher
// Check compliance status against a specific framework
MATCH (c:Control)-[:PART_OF]->(f:Framework {name: 'NIST CSF'})
OPTIONAL MATCH (c)<-[:IMPLEMENTS]-(i:Implementation)
WITH c, collect(i.status) as implementations
RETURN c.id, c.name,
       size([s IN implementations WHERE s = 'implemented']) as implemented_count,
       size(implementations) as total_count,
       toFloat(size([s IN implementations WHERE s = 'implemented'])) / 
         size(implementations) * 100 as compliance_percentage
ORDER BY c.id;
```

## Best Practices

1. **Use parameters** for dynamic queries to prevent injection and improve caching
2. **Limit result sets** using `LIMIT` for exploratory queries
3. **Use `EXPLAIN`** to understand query execution plans
4. **Create indexes** for frequently queried properties
5. **Batch updates** for better performance with large data sets

## Next Steps

- [UI Guide](../usage/ui-guide.md)
- [Integration Overview](../integrations/overview.md)
