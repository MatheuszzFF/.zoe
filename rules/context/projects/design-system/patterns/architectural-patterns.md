# Padrões Arquiteturais - Design System

## 🏗️ Component-Template-Types Separation

### Estrutura de Arquivos
```
component-name/
├── component-name.component.tsx    # Lógica e estado
├── component-name.template.tsx     # Apresentação visual
├── component-name.types.ts         # Definições de tipos
├── component-name.stories.tsx      # Documentação Storybook
├── component-name.spec.tsx         # Testes unitários
└── index.ts                        # Exports
```

### Responsabilidades

#### Component (.component.tsx)
- **Estado local:** useState, useReducer
- **Efeitos:** useEffect, useCallback, useMemo
- **Lógica de negócio:** Validações, transformações
- **Handlers:** Funções de evento e callbacks
- **Props processing:** Processamento de props antes de passar para template

#### Template (.template.tsx)
- **Renderização visual:** JSX e estrutura HTML
- **Styled-components:** Estilos e componentes estilizados
- **Composição:** Organização visual dos elementos
- **forwardRef:** Para componentes que precisam de ref
- **Props destruct:** Recebe props processadas do component

#### Types (.types.ts)
- **Props interfaces:** Definições de propriedades
- **Component types:** Tipos específicos do componente
- **Export types:** Tipos para exportação
- **Utility types:** Tipos auxiliares e transformações

## 🔄 Composite Pattern

### Para Componentes Complexos
```typescript
// table.composite.tsx
export const TableComposite = {
  Table: TableComponent,
  Wrapper: TableWrapper,
  Container: TableContainer,
  // ... outros sub-componentes
}

// Uso
import { TableComposite } from './table.composite'
const { Table, Wrapper } = TableComposite
```

### Quando Usar
- **Componentes com múltiplas partes:** Table, Form, Modal
- **Família de componentes relacionados:** Button variants
- **Componentes com sub-componentes:** Card com Header, Body, Footer

## 📁 Organização de Diretórios

### Estrutura por Categoria
```
src/
├── buttons/
│   ├── button/
│   ├── cancel-button/
│   └── confirm-button/
├── table/
│   ├── table/
│   └── table-wrapper/
└── forms/
    ├── input/
    └── select/
```

### Regras de Organização
- **Categorização:** Agrupar por funcionalidade similar
- **Isolamento:** Cada componente em sua própria pasta
- **Hierarquia:** Sub-componentes dentro da categoria principal
- **Exports centralizados:** index.ts em cada nível

## 🎯 Export Patterns

### Individual Exports
```typescript
// Para componentes simples
export { Button } from './button.component'
export type { TButtonProps } from './button.types'
```

### Grouped Exports
```typescript
// Para família de componentes
export const Buttons = {
  Button,
  CancelButton,
  ConfirmButton,
  DeleteButton,
  // ...
}
```

### Namespace Exports
```typescript
// Para componentes complexos
export const TableComposite = {
  Table: TableComponent,
  Wrapper: TableWrapper,
  Container: TableContainer
}
```

## 🔧 Dependency Injection

### Theme Provider
- **Styled-components ThemeProvider:** Acesso global ao tema
- **Theme typing:** Tipos TypeScript para tema
- **Responsive breakpoints:** Breakpoints definidos no tema

### Context Usage
- **Minimal context:** Apenas quando necessário
- **Performance:** React.memo para componentes pesados
- **Prop drilling:** Preferir props sobre context quando possível 