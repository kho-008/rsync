while read FILE_TO_PATH || [ -n "${FILE_TO_PATH}" ]; do
  mkdir -p "`dirname ${FILE_TO_PATH}`"
  rsync -auv -e 'ssh -i ~/.ssh/id_rsa' user_name@example.example.jp:/home/user_name/public_html/path/${FILE_TO_PATH} ${FILE_TO_PATH}
done < file_list.txt