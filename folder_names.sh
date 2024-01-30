for directory in "./exercises"/*
do
	folder_name=$(basename "$directory")
	id=$(jq '.id' ./exercises/$folder_name/exercise.json)
	cp -r "./exercises/$folder_name" "./exercises2/$id"
done