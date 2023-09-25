---
to: <%=package%>/tsconfig.json
after: "jsx"
inject: true
---
    "baseUrl": "./",
    "paths": {
      "src/*": ["src/*"],
      "store/*": ["src/store/*"],
      "components/*": ["src/components/*"],
      "containers/*": ["src/containers/*"],
      "constants/*": ["src/constants/*"],
      "context/*": ["src/context/*"],
      "hooks/*": ["src/hooks/*"],
      "utils/*": ["src/utils/*"],
      "views/*": ["src/views/*"],
      "scss/*": ["src/scss/*"],
      "assets/*": ["src/assets/*"],
      "common/*": ["src/common/*"],
    },
