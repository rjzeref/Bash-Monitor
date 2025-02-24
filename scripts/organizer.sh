#!/bin/bash

# ALL THE EXT DATABASES
img_ext=(
    ".3dm" ".3ds" ".max" ".bmp" ".dds" ".gif" ".jpg" ".jpeg" ".png" ".psd" ".xcf" ".tga" ".thm" ".tif" ".tiff" ".yuv"
    ".ai" ".eps" ".ps" ".svg" ".dwg" ".dxf" ".gpx" ".kml" ".kmz" ".webp"
)
doc_ext=(
    ".doc" ".docx" ".pptx" ".htm" ".odt" ".pdf" ".xls" ".xlsx" ".ods" ".ppt" ".txt"
)
video_ext=(
    ".3g2" ".3gp" ".aaf" ".asf" ".avchd" ".avi" ".drc" ".flv" ".m2v" ".m4p" ".m4v" ".mkv" ".mng" ".mov" ".mp2" ".mp4"
    ".mpe" ".mpeg" ".mpg" ".mpv" ".mxf" ".nsv" ".ogg" ".ogv" ".ogm" ".qt" ".rm" ".rmvb" ".roq" ".srt" ".svi" ".vob"
    ".webm" ".wmv" ".yuv"
)
audio_ext=(
    ".aac" ".aiff" ".ape" ".au" ".flac" ".gsm" ".it" ".m3u" ".m4a" ".mid" ".mod" ".mp3" ".mpa" ".pls" ".ra" ".s3m"
    ".sid" ".wav" ".wma" ".xm"
)
archive_ext=(
    ".7z" ".a" ".apk" ".ar" ".bz2" ".cab" ".cpio" ".deb" ".dmg" ".egg" ".gz" ".iso" ".jar" ".lha" ".mar" ".pea" ".rar"
    ".rpm" ".s7z" ".shar" ".tar" ".tbz2" ".tgz" ".tlz" ".war" ".whl" ".xpi" ".zip" ".zipx" ".xz" ".pak"
)
book_ext=(
    ".mobi" ".epub" ".azw1" ".azw3" ".azw4" ".azw6" ".azw" ".cbr" ".cbz"
)
code_ext=(
    ".1.ada" ".2.ada" ".ada" ".adb" ".ads" ".asm" ".bas" ".bash" ".bat" ".c" ".c++" ".cbl" ".cc" ".class" ".clj" ".cob"
    ".cpp" ".cs" ".csh" ".cxx" ".d" ".diff" ".e" ".el" ".f" ".f77" ".f90" ".fish" ".for" ".fth" ".ftn" ".go" ".groovy"
    ".h" ".hh" ".hpp" ".hs" ".html" ".htm" ".hxx" ".java" ".js" ".jsx" ".jsp" ".ksh" ".kt" ".lhs" ".lisp" ".lua" ".m"
    ".m4" ".nim" ".patch" ".php" ".pl" ".po" ".pp" ".py" ".r" ".rb" ".rs" ".s" ".scala" ".sh" ".swg" ".swift" ".v"
    ".vb" ".vcxproj" ".xcodeproj" ".xml" ".zsh"
)

directory_path=""

# FILE LIST
files=$(ls)



# ALL Functions
arrange_images() {
    echo -n "\nSearching for Images"
    for i in {1..10}; do
        echo -n "."
        sleep 0.2
    done
    echo "Done"

    images=()
    for file in $files; do
        ext="${file##*.}"
        if [[ " ${img_ext[@]} " =~ " .$ext " ]]; then
            images+=("$file")
        fi
    done

    if [ ${#images[@]} -eq 0 ]; then
        echo "No images found !!"
    else
        echo "Found ${#images[@]} images !!"
        echo -n "\nSearching for 'Images' directory"
        for i in {1..10}; do
            echo -n "."
            sleep 0.2
        done

        if [ ! -d "Images" ]; then
            echo "Not Found !!\nSo creating"
            for i in {1..10}; do
                echo -n "."
                sleep 0.2
            done
            mkdir "Images"
            echo "Done!!"
        else
            echo "Found !!"
        fi

        for item in "${images[@]}"; do
            mv "$item" "Images/"
        done
        echo "Successfully Moved ${#images[@]} image files in 'Images' folder"
    fi
}

arrange_documents() {
    echo -n "\nSearching for Documents"
    for i in {1..10}; do
        echo -n "."
        sleep 0.2
    done
    echo "Done"

    documents=()
    for file in $files; do
        ext="${file##*.}"
        if [[ " ${doc_ext[@]} " =~ " .$ext " ]]; then
            documents+=("$file")
        fi
    done

    if [ ${#documents[@]} -eq 0 ]; then
        echo "No documents found !!"
    else
        echo "Found ${#documents[@]} documents !!"
        echo -n "\nSearching for 'Documents' directory"
        for i in {1..10}; do
            echo -n "."
            sleep 0.2
        done

        if [ ! -d "Documents" ]; then
            echo "Not Found !!\nSo creating"
            for i in {1..10}; do
                echo -n "."
                sleep 0.2
            done
            mkdir "Documents"
            echo "Done!!"
        else
            echo "Found !!"
        fi

        for item in "${documents[@]}"; do
            mv "$item" "Documents/"
        done
        echo "Successfully Moved ${#documents[@]} document files in 'Documents' folder"
    fi
}

arrange_videos() {
    echo -n "\nSearching for Videos"
    for i in {1..10}; do
        echo -n "."
        sleep 0.2
    done
    echo "Done"

    videos=()
    for file in $files; do
        ext="${file##*.}"
        if [[ " ${video_ext[@]} " =~ " .$ext " ]]; then
            videos+=("$file")
        fi
    done

    if [ ${#videos[@]} -eq 0 ]; then
        echo "No videos found !!"
    else
        echo "Found ${#videos[@]} videos !!"
        echo -n "\nSearching for 'Videos' directory"
        for i in {1..10}; do
            echo -n "."
            sleep 0.2
        done

        if [ ! -d "Videos" ]; then
            echo "Not Found !!\nSo creating"
            for i in {1..10}; do
                echo -n "."
                sleep 0.2
            done
            mkdir "Videos"
            echo "Done!!"
        else
            echo "Found !!"
        fi

        for item in "${videos[@]}"; do
            mv "$item" "Videos/"
        done
        echo "Successfully Moved ${#videos[@]} video files in 'Videos' folder"
    fi
}

arrange_audios() {
    echo -n "\nSearching for Audios"
    for i in {1..10}; do
        echo -n "."
        sleep 0.2
    done
    echo "Done"

    audios=()
    for file in $files; do
        ext="${file##*.}"
        if [[ " ${audio_ext[@]} " =~ " .$ext " ]]; then
            audios+=("$file")
        fi
    done

    if [ ${#audios[@]} -eq 0 ]; then
        echo "No audios found !!"
    else
        echo "Found ${#audios[@]} audios !!"
        echo -n "\nSearching for 'Audios' directory"
        for i in {1..10}; do
            echo -n "."
            sleep 0.2
        done

        if [ ! -d "Audios" ]; then
            echo "Not Found !!\nSo creating"
            for i in {1..10}; do
                echo -n "."
                sleep 0.2
            done
            mkdir "Audios"
            echo "Done!!"
        else
            echo "Found !!"
        fi

        for item in "${audios[@]}"; do
            mv "$item" "Audios/"
        done
        echo "Successfully Moved ${#audios[@]} audio files in 'Audios' folder"
    fi
}

arrange_archives() {
    echo -n "\nSearching for Archives"
    for i in {1..10}; do
        echo -n "."
        sleep 0.2
    done
    echo "Done"

    archives=()
    for file in $files; do
        ext="${file##*.}"
        if [[ " ${archive_ext[@]} " =~ " .$ext " ]]; then
            archives+=("$file")
        fi
    done

    if [ ${#archives[@]} -eq 0 ]; then
        echo "No archives found !!"
    else
        echo "Found ${#archives[@]} archives !!"
        echo -n "\nSearching for 'Archives' directory"
        for i in {1..10}; do
            echo -n "."
            sleep 0.2
        done

        if [ ! -d "Archives" ]; then
            echo "Not Found !!\nSo creating"
            for i in {1..10}; do
                echo -n "."
                sleep 0.2
            done
            mkdir "Archives"
            echo "Done!!"
        else
            echo "Found !!"
        fi

        for item in "${archives[@]}"; do
            mv "$item" "Archives/"
        done
        echo "Successfully Moved ${#archives[@]} archive files in 'Archives' folder"
    fi
}

arrange_books() {
    echo -n "\nSearching for Books"
    for i in {1..10}; do
        echo -n "."
        sleep 0.2
    done
    echo "Done"

    books=()
    for file in $files; do
        ext="${file##*.}"
        if [[ " ${book_ext[@]} " =~ " .$ext " ]]; then
            books+=("$file")
        fi
    done

    if [ ${#books[@]} -eq 0 ]; then
        echo "No books found !!"
    else
        echo "Found ${#books[@]} books !!"
        echo -n "\nSearching for 'Books' directory"
        for i in {1..10}; do
            echo -n "."
            sleep 0.2
        done

        if [ ! -d "Books" ]; then
            echo "Not Found !!\nSo creating"
            for i in {1..10}; do
                echo -n "."
                sleep 0.2
            done
            mkdir "Books"
            echo "Done!!"
        else
            echo "Found !!"
        fi

        for item in "${books[@]}"; do
            mv "$item" "Books/"
        done
        echo "Successfully Moved ${#books[@]} book files in 'Books' folder"
    fi
}

arrange_codes() {
    echo -n "\nSearching for Codes"
    for i in {1..10}; do
        echo -n "."
        sleep 0.2
    done
    echo "Done"

    codes=()
    for file in $files; do
        ext="${file##*.}"
        if [[ " ${code_ext[@]} " =~ " .$ext " ]]; then
            codes+=("$file")
        fi
    done

    if [ ${#codes[@]} -eq 0 ]; then
        echo "No codes found !!"
    else
        echo "Found ${#codes[@]} codes !!"
        echo -n "\nSearching for 'Codes' directory"
        for i in {1..10}; do
            echo -n "."
            sleep 0.2
        done

        if [ ! -d "Codes" ]; then
            echo "Not Found !!\nSo creating"
            for i in {1..10}; do
                echo -n "."
                sleep 0.2
            done
            mkdir "Codes"
            echo "Done!!"
        else
            echo "Found !!"
        fi

        for item in "${codes[@]}"; do
            mv "$item" "Codes/"
        done
        echo "Successfully Moved ${#codes[@]} code files in 'Codes' folder"
    fi
}

arrange_other() {
    file_to_be_skipped=("THE_ORGANIZER.exe" "THE_ORGANIZER.py" "DumpStack.log.tmp")
    others_ext=()

    echo -n "\nSearching for other files"
    for i in {1..10}; do
        echo -n "."
        sleep 0.2
    done
    echo "Done"

    for file in $files; do
        ext="${file##*.}"
        if [[ ! " ${img_ext[@]} " =~ " .$ext " ]] && \
           [[ ! " ${doc_ext[@]} " =~ " .$ext " ]] && \
           [[ ! " ${video_ext[@]} " =~ " .$ext " ]] && \
           [[ ! " ${audio_ext[@]} " =~ " .$ext " ]] && \
           [[ ! " ${archive_ext[@]} " =~ " .$ext " ]] && \
           [[ ! " ${book_ext[@]} " =~ " .$ext " ]] && \
           [[ ! " ${code_ext[@]} " =~ " .$ext " ]] && \
           [[ -f "$file" ]] && \
           [[ ! " ${file_to_be_skipped[@]} " =~ " $file " ]]; then
            others_ext+=("$file")
        fi
    done

    if [ ${#others_ext[@]} -eq 0 ]; then
        echo "No other files found !!"
    else
        echo "Found ${#others_ext[@]} other files !!"
        echo -n "\nSearching for 'Others' directory"
        for i in {1..10}; do
            echo -n "."
            sleep 0.2
        done

        if [ ! -d "Others" ]; then
            echo "Not Found !!\nSo creating"
            for i in {1..10}; do
                echo -n "."
                sleep 0.2
            done
            mkdir "Others"
            echo "Done!!"
        else
            echo "Found !!"
        fi

        for item in "${others_ext[@]}"; do
            mv "$item" "Others/"
        done
        echo "Successfully Moved ${#others_ext[@]} other files in 'Others' folder"
    fi
}

delete_empty_folder() {
    empty_folders=()
    count=0

    echo -n "\nSearching for Empty folders"
    for i in {1..10}; do
        echo -n "."
        sleep 0.3
    done
    echo "Done"

    for file in $files; do
        if [ -d "$file" ]; then
            if [ -z "$(ls -A "$file")" ]; then
                empty_folders+=("$file")
                count=$((count + 1))
                rmdir "$file"
            fi
        fi
    done

    if [ ${#empty_folders[@]} -ne 0 ]; then
        echo "Successfully deleted $count empty folders\n"
    else
        echo "No empty folders found !!\n"
    fi
}

be_organised_text="\n\n\t\t\t\t THANKS FOR CHOOSING ORGANIZER ^_^\n\t\t\t\t\t #be_organized ✌️"

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo -e "\n\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx WELCOME TO ORGANIZER xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    echo -e "\n\nWhat it does --> This is an organizer program which will organize all the clutter in your folder\n"
    echo -e "Note : Press 'q' to exit anytime\n"
    echo -e "ATTENTION !!\nCurrent working directory is : $(pwd)\n"

    while true; do
        echo -e "Options Available :- \n\n0. Enter custom file path\n1. Arrange Images\n2. Arrange Documents\n3. Arrange Videos\n4. Arrange Audio Files\n5. Arrange Archive Files \n6. Arrange Books\n7. Arrange Codes\n8. Arrange Other Files \n9. Clear Empty folders \n10. Arrange All File Type\n\nSo BOSS !! What you wanna do ?"
        read -p "Ans : " user_choice

        if [[ "$user_choice" == "q" ]]; then
            echo -e "$be_organised_text"
            break
        elif [[ "$user_choice" == "0" ]]; then
            read -p "\nEnter the folder path which you want to organize : " directory_path
            if cd "$directory_path" 2>/dev/null; then
                echo -e "\nCurrent working directory has been set to : $(pwd)\n"
                files=$(ls)
            else
                echo -e "\nPlease enter a valid file path\n"
            fi
        elif [[ "$user_choice" == "1" ]]; then
            arrange_images
            files=$(ls)
            echo -e "$be_organised_text"
        elif [[ "$user_choice" == "2" ]]; then
            arrange_documents
            files=$(ls)
            echo -e "$be_organised_text"
        elif [[ "$user_choice" == "3" ]]; then
            arrange_videos
            files=$(ls)
            echo -e "$be_organised_text"
        elif [[ "$user_choice" == "4" ]]; then
            arrange_audios
            files=$(ls)
            echo -e "$be_organised_text"
        elif [[ "$user_choice" == "5" ]]; then
            arrange_archives
            files=$(ls)
            echo -e "$be_organised_text"
        elif [[ "$user_choice" == "6" ]]; then
            arrange_books
            files=$(ls)
            echo -e "$be_organised_text"
        elif [[ "$user_choice" == "7" ]]; then
            arrange_codes
            files=$(ls)
            echo -e "$be_organised_text"
        elif [[ "$user_choice" == "8" ]]; then
            arrange_other
            files=$(ls)
            echo -e "$be_organised_text"
        elif [[ "$user_choice" == "9" ]]; then
            delete_empty_folder
            files=$(ls)
            echo -e "$be_organised_text"
        elif [[ "$user_choice" == "10" ]]; then
            arrange_images
            arrange_documents
            arrange_videos
            arrange_audios
            arrange_archives
            arrange_books
            arrange_codes
            arrange_other
            delete_empty_folder
            files=$(ls)
            echo -e "$be_organised_text"
        else
            echo -e "\nPlease enter a valid index number from the given options !!\n"
        fi
    done
fi

