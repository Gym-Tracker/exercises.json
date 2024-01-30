id=1
for directory in "./exercises"/*
do
	folder_name=$(basename "$directory")
	# echo $filename
	# filename="${filename}.json"
	mkdir ./exercises2/$folder_name
	jq --argjson id $id '.id = $id' "./exercises/${folder_name}/exercise.json"  >> ./exercises2/$folder_name/exercise.json
	id=$((id + 1))
done

#  > ./exercises2/$filename