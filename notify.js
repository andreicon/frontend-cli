/**
 * This script is used to notify the backend that a new build has been deployed.
 * It is used in the Azure DevOps pipeline.
 * Usage: PUBLIC_URL=https://wolfstaticcdnendpointtest-sample.azureedge.net ACCOUNT_NAME=wolfstatictest BRANCH_NAME=main ENVIRONMENT=test API_URL=https://test.main.de.wolf.eu/api/mywolf/frontend-apps/frontend-pipeline PROJECT_NAME=your-project-name node notify.js
 */

const fs = require('fs');
const WritableStream = require('stream/web').WritableStream;

const BASE_PATH = `https://${process.env.ACCOUNT_NAME}.blob.core.windows.net`;

const assetsFile = fs.readFileSync(`${process.env.BUILD_PATH}/manifest.json`);
const assets = JSON.parse(assetsFile);

const stream = new WritableStream({
	write(chunk) {
		process.stdout.write(chunk);
	},
});

const notifyPimcore = async (apiUrl) => {
	const response = await fetch(apiUrl, {
		method: 'POST',
		body: JSON.stringify({
			js: `${BASE_PATH}/${process.env.PUBLIC_URL}/${assets['index.html'].file}`,
			css: `${BASE_PATH}/${process.env.PUBLIC_URL}/${assets['index.css'].file}`,
			branchName: process.env.BRANCH_NAME,
			environment: process.env.ENVIRONMENT,
			projectName: process.env.PROJECT_NAME,
		}),
		headers: {
			'Content-Type': 'application/json',
			Authorization: `Basic ${process.env.BASIC_AUTH}`,
		},
	});
	const body = await response.body;
	body.pipeTo(stream);
	return response;
};

(async () => {
	await notifyPimcore(process.env.API_URL);
})();
