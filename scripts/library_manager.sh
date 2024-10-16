#!/bin/bash

# تابع برای افزودن یک کتاب
add_book() {
    echo "Enter book title:"
    read book_title
    echo "Enter book author:"
    read book_author
    echo "Enter book category:"
    read book_category
    echo "$book_title,$book_author,$book_category" >> library_books.csv
    echo "Book added successfully!"
}

# تابع برای افزودن یک ویدیو
add_video() {
    echo "Enter video title:"
    read video_title
    echo "Enter video URL:"
    read video_url
    echo "Enter video category:"
    read video_category
    echo "$video_title,$video_url,$video_category" >> video_library.csv
    echo "Video added successfully!"
}

# تابع برای نمایش کتاب‌ها
list_books() {
    echo "List of Books:"
    cat library_books.csv
}

# تابع برای نمایش ویدیوها
list_videos() {
    echo "List of Videos:"
    cat video_library.csv
}

# منوی اصلی
while true; do
    echo "Choose an option:"
    echo "1. Add a book"
    echo "2. Add a video"
    echo "3. List books"
    echo "4. List videos"
    echo "5. Exit"
    read choice

    case $choice in
        1) add_book ;;
        2) add_video ;;
        3) list_books ;;
        4) list_videos ;;
        5) break ;;
        *) echo "Invalid choice, please try again" ;;
    esac
done

