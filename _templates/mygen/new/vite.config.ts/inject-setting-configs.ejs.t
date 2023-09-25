---
to: <%=package%>/vite.config.ts
after: "plugins"
inject: true
---
server: {
    port: 6006
  },
  build: {
    // generate manifest.json in outDir
    manifest: true,
    outDir: 'build',
  },