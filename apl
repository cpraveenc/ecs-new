1. Prepare Your New GitHub Repository
Before making changes in AWS Amplify, ensure the following prerequisites are met for your new repository:

Create or Clone the Repository:

Set up your new repository on GitHub.
If you already have a repository, ensure it is accessible with proper permissions.
Push the Code:

Make sure the new repository contains the same or updated application code.
Use Git commands to push the code to GitHub:
git init
git add .
git commit -m "Initial commit for new repo"
git remote add origin https://github.com/username/new-repo.git
git push -u origin main
Verify the Branch:

Ensure that the branch you want Amplify to build from (e.g., main, master, or a feature branch) exists and is up to date.
Application Build Settings:

Verify your application build settings like package.json (for Node.js apps), build scripts, or other requirements.
Test Locally:

Run the application locally to ensure the code compiles and functions correctly before pushing it to AWS Amplify.
2. Log in to AWS Management Console
Open a browser and go to the AWS Management Console.
Sign in using your AWS credentials.
Navigate to AWS Amplify:
You can search for "Amplify" in the AWS Console search bar.
Click on "AWS Amplify" under "Frontend Web and Mobile".
3. Select Your Existing Amplify Application
In the Amplify Console, locate the list of existing applications.
Click on the application name for which you want to change the source repository.
This will take you to the application details page where you can manage your app settings, builds, and deployments.
4. Disconnect the Existing Repository
To unlink the current GitHub repository:

On the left-hand menu, go to "App settings" → "General".
Under the "Repository" section, you will see the current connected GitHub repository.
Click on "Disconnect repository".
Confirm the action in the pop-up dialog box.
Important Notes:

Disconnecting the repository does not delete your deployment history or environment settings.
Your application will continue serving the current deployed version until you connect a new repository and redeploy.
5. Connect to the New GitHub Repository
Now that you have disconnected the old repository, you need to connect the new one:

On the main Amplify application page, click "Connect repository".
In the repository provider options, select GitHub.
Authenticate with GitHub
If you have not previously authorized AWS Amplify, it will prompt you to log in to GitHub.
AWS Amplify will ask for permissions to access your repositories.
Grant the required permissions by following the OAuth flow.
Tip: AWS Amplify only requests access to the repositories you explicitly connect, ensuring security and privacy.

6. Choose the New Repository and Branch
From the list of repositories displayed, select your new GitHub repository.
Choose the branch you want AWS Amplify to build from (e.g., main, master, develop, or any other branch).
Click Next to proceed.
7. Configure Build Settings
Once the new repository and branch are selected, AWS Amplify will detect the framework or build requirements (e.g., React, Angular, Vue.js) and provide default build settings.

Default Build Configuration
Amplify uses a build specification file (e.g., amplify.yml) to define the build process. Below is a default configuration for a React application:

version: 1
frontend:
  phases:
    preBuild:
      commands:
        - npm install
    build:
      commands:
        - npm run build
  artifacts:
    baseDirectory: build
    files:
      - '**/*'
  cache:
    paths:
      - node_modules/**/*
PreBuild: Install dependencies (e.g., npm install).
Build: Run the build script (e.g., npm run build).
Artifacts: Specify the directory and files to deploy (e.g., build folder for React apps).
If you need custom build steps:

Click Edit to modify the build settings in the console.
Alternatively, push a custom amplify.yml file to your new GitHub repository.
Click Next when the build settings are ready.

8. Review and Deploy
Review the following:

Repository: Verify the new repository name.
Branch: Confirm the branch you selected.
Build Settings: Ensure the build specification file is correct.
Click Save and Deploy.

9. Monitor the Build Process
Amplify will now start the build process using the new repository and branch.

Monitor the progress:

Go to the "Builds" section under the application details.
View logs for each step (e.g., Install, Build, Deploy).
If there are any issues, Amplify will show the exact build errors.
Wait until the build process completes successfully.

10. Test the Deployed Application
Once the deployment succeeds:

Open the application URL provided by AWS Amplify.
Verify that the application works as expected.
Test critical functionalities to ensure the code deployment from the new repository is successful.
11. Update Environment Variables (If Required)
If your application relies on environment variables (e.g., API keys, secret tokens, URLs):

Go to "App settings" → "Environment variables".
Update or add variables required for the new repository setup.
Click Save.
Trigger Redeployment:
Save changes and click "Redeploy" to ensure the updated environment variables are applied.
12. Best Practices and Cleanup
Backup Old Configurations:

Take a screenshot or note down your old build settings and environment variables.
Repository Permissions:

Verify that the GitHub repository permissions are restricted to only necessary users.
Clean Up Old Repository:

Archive or delete the old repository if no longer required.
Version Control:

Use feature branches in the new repository to safely test and deploy changes.
Troubleshooting Common Issues
Build Fails:

Check build logs for errors.
Ensure dependencies (e.g., Node.js, Python) are compatible and updated.
Missing Permissions:

Re-authorize GitHub access for AWS Amplify.
Environment Variable Errors:

Verify that all required environment variables are set in AWS Amplify.
Incorrect Branch:

Double-check that the correct branch is selected in the Amplify settings.
