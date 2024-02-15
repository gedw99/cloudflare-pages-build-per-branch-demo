# !/bin/bash

# NOTE: do not run this locally, because it will delete .env files
# The reason the envs are deleted is to ensure that there is no pollution of .env files across CD environemnts.

echo "CF_PAGES_BRANCH=$CF_PAGES_BRANCH"
echo "NODE_ENV=$NODE_ENV"

make print

if [ "$CF_PAGES_BRANCH" == "production" ]; then
  # Run the "production" script in `package.json` on the "production" branch
  # "production" should be replaced with the name of your Production branch

  npm run production

elif [ "$CF_PAGES_BRANCH" == "staging" ]; then
  # Run the "staging" script in `package.json` on the "staging" branch
  # "staging" should be replaced with the name of your specific branch

  npm run staging

else
  # Else run the dev script
  npm run dev
fi
