#!/bin/bash

cd ..

echo "Welcome to WOLF!"
read -p "Project name:" projectName
yarn create vite $projectName --template react-ts

cd $projectName

echo "========================= installing dependencies"
yarn add axios react-redux redux @reduxjs/toolkit sass node-sass date-fns fs lodash react react-dom vite-plugin-svgr vite-tsconfig-paths
yarn add --dev @types/node @vitejs/plugin-react eslint-plugin-jsx-a11y eslint-plugin-react husky

cd ../frontend-cli

#from design system
echo "========================= loading common components"
cp -r common "../${projectName}/src"

echo "========================= loading assets"
cp -r assets "../${projectName}/src"

# modify vite config
sed -i "s/plugins:.*/plugins: [react(), tsconfigPaths(), svgr()],/g" "../${projectName}/vite.config.ts"

echo "========================= generate code..."
HYGEN_OVERWRITE=1 npx hygen@6.2.11 mygen new --package "../${projectName}"
