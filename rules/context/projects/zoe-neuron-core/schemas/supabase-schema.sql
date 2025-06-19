-- 🚀 PERSONAL MCP PROJECT - SUPABASE SCHEMA
-- Otimizado para máxima performance e personalização

-- ==========================================
-- 🎯 CORE TABLES
-- ==========================================

-- 📊 Math Context - Contexto ativo em tempo real
CREATE TABLE math_context (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  -- Current State
  current_project TEXT NOT NULL,
  current_task TEXT,
  current_session_id TEXT NOT NULL,
  current_focus TEXT, -- what Math is working on right now
  
  -- Mental Model
  mental_state JSONB DEFAULT '{}', -- how Math is thinking about the problem
  context_depth INTEGER DEFAULT 1, -- how deep in the problem (1-10)
  flow_state TEXT CHECK (flow_state IN ('starting', 'focused', 'deep-flow', 'debugging', 'exploring')),
  energy_level INTEGER CHECK (energy_level >= 1 AND energy_level <= 10),
  
  -- Temporal Context
  session_start_time TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  last_activity TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  estimated_session_duration INTERVAL,
  
  -- Context Metadata
  context_type TEXT NOT NULL, -- 'development', 'debugging', 'exploration', 'maintenance'
  interruption_count INTEGER DEFAULT 0,
  context_switches INTEGER DEFAULT 0,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 🧠 Math Patterns - Padrões pessoais de desenvolvimento
CREATE TABLE math_patterns (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  -- Pattern Identity
  pattern_type TEXT NOT NULL, -- 'coding-style', 'naming-convention', 'architecture-preference'
  pattern_name TEXT NOT NULL,
  pattern_context TEXT, -- when this pattern applies
  
  -- Pattern Details
  pattern_data JSONB NOT NULL,
  confidence_score FLOAT DEFAULT 1.0 CHECK (confidence_score >= 0 AND confidence_score <= 1),
  usage_frequency INTEGER DEFAULT 0,
  success_rate FLOAT DEFAULT 1.0,
  
  -- Learning Data
  first_observed TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  last_reinforced TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  evolution_history JSONB DEFAULT '[]',
  
  -- Context Affinity
  project_affinity TEXT[], -- which projects this pattern applies to
  task_affinity TEXT[], -- which types of tasks
  mood_affinity TEXT[], -- which mental states
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  UNIQUE(pattern_type, pattern_name, pattern_context)
);

-- 🚀 Project Intelligence - IA específica por projeto
CREATE TABLE project_intelligence (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  -- Project Identity
  project_name TEXT NOT NULL,
  project_type TEXT, -- 'web-app', 'api', 'mobile', 'library', 'system'
  
  -- Project Personality
  project_personality JSONB DEFAULT '{}', -- unique characteristics of this project
  development_stage TEXT, -- 'inception', 'development', 'maintenance', 'refactoring'
  complexity_level INTEGER CHECK (complexity_level >= 1 AND complexity_level <= 10),
  
  -- Success Patterns
  success_patterns JSONB DEFAULT '[]', -- what worked well in this project
  anti_patterns JSONB DEFAULT '[]', -- what to avoid
  preferred_approaches JSONB DEFAULT '{}', -- how Math likes to work on this project
  
  -- Architecture Intelligence
  tech_stack JSONB DEFAULT '{}',
  architecture_decisions JSONB DEFAULT '[]',
  key_components JSONB DEFAULT '[]',
  integration_points JSONB DEFAULT '[]',
  
  -- Performance Data
  development_velocity JSONB DEFAULT '{}', -- how fast things get done
  common_issues JSONB DEFAULT '[]', -- recurring problems
  solution_patterns JSONB DEFAULT '[]', -- how problems get solved
  
  -- Evolution Timeline
  project_milestones JSONB DEFAULT '[]',
  evolution_history JSONB DEFAULT '[]',
  future_plans JSONB DEFAULT '{}',
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  UNIQUE(project_name)
);

-- ⚡ Zoe Optimization - Otimizações e automações
CREATE TABLE zoe_optimization (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  -- Optimization Identity
  optimization_type TEXT NOT NULL, -- 'command-shortcut', 'workflow-automation', 'context-memory'
  optimization_name TEXT NOT NULL,
  
  -- Optimization Details
  trigger_pattern TEXT, -- what triggers this optimization
  action_data JSONB NOT NULL, -- what the optimization does
  conditions JSONB DEFAULT '{}', -- when it applies
  
  -- Performance Metrics
  usage_count INTEGER DEFAULT 0,
  success_rate FLOAT DEFAULT 1.0,
  time_saved_seconds INTEGER DEFAULT 0,
  user_satisfaction INTEGER CHECK (user_satisfaction >= 1 AND user_satisfaction <= 5),
  
  -- Learning Data
  created_from TEXT, -- how this optimization was discovered
  effectiveness_score FLOAT DEFAULT 1.0,
  last_used TIMESTAMP WITH TIME ZONE,
  
  -- Context Binding
  project_specific BOOLEAN DEFAULT FALSE,
  project_name TEXT,
  context_requirements JSONB DEFAULT '{}',
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  UNIQUE(optimization_type, optimization_name, project_name)
);

-- ==========================================
-- 🔍 SEARCH & INTELLIGENCE TABLES
-- ==========================================

-- 🎯 Knowledge Base - Base de conhecimento com embeddings
CREATE TABLE knowledge_base (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  -- Content
  content TEXT NOT NULL,
  content_type TEXT NOT NULL, -- 'command', 'pattern', 'solution', 'preference'
  content_category TEXT,
  
  -- Vector Search
  embedding VECTOR(1536), -- OpenAI embeddings
  search_keywords TEXT[],
  semantic_tags TEXT[],
  
  -- Context Metadata
  project_context TEXT,
  session_context TEXT,
  temporal_relevance JSONB DEFAULT '{}', -- when this knowledge is most relevant
  
  -- Quality Metrics
  relevance_score FLOAT DEFAULT 1.0,
  confidence_level FLOAT DEFAULT 1.0,
  usage_frequency INTEGER DEFAULT 0,
  user_rating INTEGER CHECK (user_rating >= 1 AND user_rating <= 5),
  
  -- Relationship Data
  related_entities UUID[],
  dependency_chain TEXT[],
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 📊 Query Analytics - Analytics de queries para otimização
CREATE TABLE query_analytics (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  -- Query Data
  query_text TEXT NOT NULL,
  query_type TEXT, -- 'search', 'context-load', 'prediction'
  query_context JSONB DEFAULT '{}',
  
  -- Performance Metrics
  execution_time_ms INTEGER NOT NULL,
  results_count INTEGER,
  relevance_score FLOAT,
  user_satisfaction INTEGER CHECK (user_satisfaction >= 1 AND user_satisfaction <= 5),
  
  -- Context Data
  project_context TEXT,
  session_id TEXT,
  user_flow_state TEXT,
  
  -- Results Analysis
  results_used INTEGER DEFAULT 0,
  results_helpful BOOLEAN,
  follow_up_queries TEXT[],
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 🔮 Predictive Intelligence - IA preditiva
CREATE TABLE predictive_intelligence (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  -- Prediction Data
  prediction_type TEXT NOT NULL, -- 'next-action', 'needed-resource', 'potential-problem'
  prediction_content JSONB NOT NULL,
  confidence_score FLOAT CHECK (confidence_score >= 0 AND confidence_score <= 1),
  
  -- Context Pattern
  context_pattern JSONB NOT NULL, -- the pattern that triggered this prediction
  trigger_conditions JSONB DEFAULT '{}',
  timing_prediction TEXT, -- 'immediate', 'short-term', 'medium-term'
  
  -- Validation Data
  was_accurate BOOLEAN,
  was_helpful BOOLEAN,
  actual_outcome JSONB,
  
  -- Learning Feedback
  reinforcement_data JSONB DEFAULT '{}',
  accuracy_history JSONB DEFAULT '[]',
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  expires_at TIMESTAMP WITH TIME ZONE
);

-- ==========================================
-- 🚀 PERFORMANCE OPTIMIZATION
-- ==========================================

-- Índices para máxima performance
CREATE INDEX idx_math_context_current_project ON math_context(current_project);
CREATE INDEX idx_math_context_session ON math_context(current_session_id);
CREATE INDEX idx_math_context_activity ON math_context(last_activity DESC);

CREATE INDEX idx_math_patterns_type ON math_patterns(pattern_type);
CREATE INDEX idx_math_patterns_frequency ON math_patterns(usage_frequency DESC);
CREATE INDEX idx_math_patterns_affinity ON math_patterns USING GIN(project_affinity);

CREATE INDEX idx_project_intelligence_name ON project_intelligence(project_name);
CREATE INDEX idx_project_intelligence_type ON project_intelligence(project_type);

CREATE INDEX idx_zoe_optimization_type ON zoe_optimization(optimization_type);
CREATE INDEX idx_zoe_optimization_project ON zoe_optimization(project_name);
CREATE INDEX idx_zoe_optimization_usage ON zoe_optimization(usage_count DESC);

CREATE INDEX idx_knowledge_base_embedding ON knowledge_base USING ivfflat (embedding vector_cosine_ops);
CREATE INDEX idx_knowledge_base_keywords ON knowledge_base USING GIN(search_keywords);
CREATE INDEX idx_knowledge_base_category ON knowledge_base(content_type, content_category);

CREATE INDEX idx_query_analytics_time ON query_analytics(created_at DESC);
CREATE INDEX idx_query_analytics_performance ON query_analytics(execution_time_ms);

CREATE INDEX idx_predictive_intelligence_type ON predictive_intelligence(prediction_type);
CREATE INDEX idx_predictive_intelligence_confidence ON predictive_intelligence(confidence_score DESC);

-- ==========================================
-- 🎯 STORED PROCEDURES OTIMIZADAS
-- ==========================================

-- Busca híbrida ultra-rápida
CREATE OR REPLACE FUNCTION search_math_context(
  p_query TEXT,
  p_project_context TEXT DEFAULT NULL,
  p_limit INTEGER DEFAULT 10
)
RETURNS TABLE(
  content JSONB,
  relevance_score FLOAT,
  source_table TEXT
) 
LANGUAGE plpgsql
AS $$
BEGIN
  -- Multi-table search with intelligent ranking
  RETURN QUERY
  WITH combined_results AS (
    -- Current context (highest priority)
    SELECT 
      to_jsonb(mc) as content,
      CASE 
        WHEN mc.current_project = p_project_context THEN 1.0
        ELSE 0.7
      END as relevance_score,
      'math_context' as source_table
    FROM math_context mc
    WHERE mc.current_project = p_project_context
    
    UNION ALL
    
    -- Patterns (high priority)
    SELECT 
      to_jsonb(mp) as content,
      mp.confidence_score * 0.9 as relevance_score,
      'math_patterns' as source_table
    FROM math_patterns mp
    WHERE p_project_context = ANY(mp.project_affinity)
    
    UNION ALL
    
    -- Project intelligence (medium priority)
    SELECT 
      to_jsonb(pi) as content,
      0.8 as relevance_score,
      'project_intelligence' as source_table
    FROM project_intelligence pi
    WHERE pi.project_name = p_project_context
    
    UNION ALL
    
    -- Knowledge base semantic search (variable priority)
    SELECT 
      to_jsonb(kb) as content,
      kb.relevance_score * 0.6 as relevance_score,
      'knowledge_base' as source_table
    FROM knowledge_base kb
    WHERE kb.project_context = p_project_context
       OR p_query = ANY(kb.search_keywords)
  )
  SELECT cr.content, cr.relevance_score, cr.source_table
  FROM combined_results cr
  ORDER BY cr.relevance_score DESC
  LIMIT p_limit;
END;
$$;

-- Atualização inteligente de contexto
CREATE OR REPLACE FUNCTION update_math_context(
  p_project TEXT,
  p_task TEXT,
  p_session_id TEXT,
  p_flow_state TEXT DEFAULT NULL
)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO math_context (
    current_project, 
    current_task, 
    current_session_id, 
    flow_state,
    context_type
  )
  VALUES (
    p_project, 
    p_task, 
    p_session_id, 
    COALESCE(p_flow_state, 'starting'),
    'development'
  )
  ON CONFLICT (current_session_id) 
  DO UPDATE SET
    current_project = EXCLUDED.current_project,
    current_task = EXCLUDED.current_task,
    flow_state = EXCLUDED.flow_state,
    last_activity = NOW(),
    context_switches = math_context.context_switches + 1,
    updated_at = NOW();
END;
$$;

-- Row Level Security
ALTER TABLE math_context ENABLE ROW LEVEL SECURITY;
ALTER TABLE math_patterns ENABLE ROW LEVEL SECURITY;
ALTER TABLE project_intelligence ENABLE ROW LEVEL SECURITY;
ALTER TABLE zoe_optimization ENABLE ROW LEVEL SECURITY;
ALTER TABLE knowledge_base ENABLE ROW LEVEL SECURITY;

-- Policies (assuming single user Math for now)
CREATE POLICY "Math full access" ON math_context FOR ALL USING (true);
CREATE POLICY "Math full access" ON math_patterns FOR ALL USING (true);
CREATE POLICY "Math full access" ON project_intelligence FOR ALL USING (true);
CREATE POLICY "Math full access" ON zoe_optimization FOR ALL USING (true);
CREATE POLICY "Math full access" ON knowledge_base FOR ALL USING (true); 