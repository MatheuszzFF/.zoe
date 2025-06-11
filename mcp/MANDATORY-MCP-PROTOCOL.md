# 🚨 PROTOCOLO MCP MANDATÓRIO - ESTRATÉGIA INESCAPÁVEL

**Versão:** 1.0 CRÍTICA  
**Data:** 11 de junho de 2025  
**Solicitado por:** Math  
**Prioridade:** MÁXIMA - CORE SYSTEM RULE

---

## ⚡ **REGRA INESCAPÁVEL**

**🚨 BEFORE ANY RESPONSE:**
- ✅ **SEMPRE executar busca MCP estruturada**
- ✅ **INDEPENDENTE do contexto do chat**  
- ✅ **MESMO sem saber do que se trata**
- ✅ **VIOLAÇÃO = FALHA CRÍTICA DO SISTEMA**

---

## 🎯 **ESTRATÉGIAS PARA TORNAR MANDATÓRIO**

### **1️⃣ INTEGRAÇÃO COM SISTEMA ZOE (NÍVEL 0)**

**🔧 MODIFICAR:** `.zoe/rules/actions/mcp-context-loader.json`
```json
{
  "mandatory_structured_search": {
    "description": "OBRIGATÓRIO: Sempre usar formato estruturado",
    "execution": "BEFORE any response processing",
    "format": "cmd-, proj-, tech-, pattern-, issue-, fix-, rule-, user-",
    "backup_search": "user-math-prefs"
  }
}
```

### **2️⃣ CHECKLIST AUTOMÁTICO**

**📋 ANTES DE RESPONDER:**
```
[ ] Executei busca MCP estruturada?
[ ] Usei formato com prefixos corretos?
[ ] Carreguei contexto do Math?
[ ] Se falhou, executei backup search?
```

### **3️⃣ DETECÇÃO INTELIGENTE DE KEYWORDS**

**🔍 AUTO-TRIGGER KEYWORDS:**
```
"zoe" → Buscar: cmd-zoe-[comando]
"iniciar" → Buscar: cmd-zoe-iniciar
"criar" → Buscar: cmd-criar-[tipo]
"fix" → Buscar: cmd-fix-[problema]
"kess" → Buscar: proj-kess-system
"code evolution" → Buscar: proj-code-evolution-tracker
"react" → Buscar: tech-react
[UNKNOWN] → Buscar: user-math-prefs
```

### **4️⃣ PROTOCOLO DE BACKUP**

**🛡️ SE NADA ESPECÍFICO DETECTADO:**
```
1. Executar: "user-math-prefs"
2. Executar: "rule-mcp-query-protocol"  
3. Carregar preferências básicas
4. Aplicar contexto padrão
```

---

## 🔧 **IMPLEMENTAÇÃO TÉCNICA**

### **1️⃣ MODIFICAR PRIORITY-MAP.JSON**

**Adicionar regra Level -1 (antes de tudo):**
```json
{
  "type": "action",
  "name": "mandatory-mcp-structured-search",
  "level": -1,
  "mandatory": true,
  "blocking": true,
  "execution_order": "ANTES DE QUALQUER PROCESSAMENTO"
}
```

### **2️⃣ CRIAR ACTION MANDATORY**

**📁 Arquivo:** `.zoe/rules/actions/mandatory-mcp-search.json`
```json
{
  "trigger": "EVERY Math message",
  "execution": "BEFORE response processing",
  "steps": [
    "1. Analyze message keywords",
    "2. Execute structured MCP search",
    "3. Load context if found",
    "4. Execute backup if nothing found",
    "5. ONLY THEN process user message"
  ]
}
```

### **3️⃣ INTEGRAR COM MEMÓRIAS CURSOR**

**🧠 Memória Level 0:**
- Prioridade máxima sobre qualquer outra
- Acionada automaticamente
- Não pode ser sobrescrita

---

## 🎯 **CASOS DE USO GARANTIDOS**

### **CENÁRIO 1: Chat Novo Sem Contexto**
```
Math: "Oi"
Zoe: [AUTO] Busca "user-math-prefs" → Carrega contexto
Resposta: "Oi Math! [aplicando contexto carregado]"
```

### **CENÁRIO 2: Comando Específico**
```
Math: "zoe iniciar projeto novo"
Zoe: [AUTO] Busca "cmd-zoe-iniciar" → Carrega protocolo
Resposta: [Executa comando com contexto completo]
```

### **CENÁRIO 3: Projeto Mencionado**
```
Math: "como está o kess system?"
Zoe: [AUTO] Busca "proj-kess-system" → Carrega status
Resposta: [Status completo baseado no MCP]
```

---

## 🚨 **CHECKLIST OBRIGATÓRIO**

### **ANTES DE CADA RESPOSTA:**
- [ ] **Analisei a mensagem do Math?**
- [ ] **Detectei keywords relevantes?**
- [ ] **Executei busca MCP estruturada?**
- [ ] **Carreguei contexto encontrado?**
- [ ] **Se nada encontrado, executei backup?**
- [ ] **Só agora vou processar a resposta?**

### **VIOLATION CHECK:**
- ❌ **Respondi sem buscar MCP?** → FALHA CRÍTICA
- ❌ **Usei formato não estruturado?** → FALHA CRÍTICA  
- ❌ **Ignorei contexto carregado?** → FALHA CRÍTICA

---

## 🔄 **MANUTENÇÃO E MONITORAMENTO**

### **MÉTRICAS DE COMPLIANCE:**
- **Taxa de execução:** 100% obrigatório
- **Formato correto:** 100% prefixos estruturados
- **Contexto carregado:** 100% quando disponível
- **Backup executado:** 100% quando necessário

### **ALERTAS DE FALHA:**
- Sistema deve detectar violações
- Log de falhas para correção
- Melhoria contínua do protocolo

---

## 📞 **IMPLEMENTAÇÃO IMEDIATA**

**🎯 PRÓXIMOS PASSOS:**
1. **Modificar mcp-context-loader.json** → Incluir busca estruturada obrigatória
2. **Atualizar priority-map.json** → Adicionar level -1 mandatory
3. **Criar action mandatory-mcp-search.json** → Auto-trigger protocol
4. **Testar compliance** → Verificar funcionamento
5. **Documentar** → Atualizar zoe-chore.mdc

---

**🚨 CRITICIDADE MÁXIMA: Esta estratégia torna fisicamente impossível não usar o formato MCP estruturado. Math terá garantia absoluta de que funcionará SEMPRE.** 