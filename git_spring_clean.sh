# Goes through each git directory in the directory where it's run and runs git clean. Can be run with any of the arguments that git clean accepts, for example:
# ./git_spring_clean.sh aggressive

for i in */; do
  if [ -d ./$i.git ]; then
    cd ./$i
    echo "About to clean $i..."
    git gc --${BASH_ARGV[*]}
    echo "Finished trying to clean $i!"
    echo " "
    cd ..
  fi
done

echo "Spring clean complete!"
