1. What is PostgreSQL?
   PostgreSQL একটি ওপেন-সোর্স, অবজেক্ট-রিলেশনাল ডাটাবেজ ম্যানেজমেন্ট সিস্টেম (ORDBMS), যা high performance , data intregrity এবং এক্সটেনসিবিলিটি প্রদান করে।
2. What is the purpose of a database schema in PostgreSQL?
   ডাটাবেজ schema হল ডাটাবেজের গঠন বা structure সংজ্ঞায়িত করার একটি উপায়। PostgreSQL-এ schema ব্যবহার করে ডাটাবেজকে লজিক্যাল গ্রুপে ভাগ করা যায় এবং ডাটা ম্যানেজমেন্ট সহজ করে।
3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
   primary key একটি টেবিলের unique এবং not null column যা প্রতিটি row আলাদা চিহ্নিত করে।
   foriegn key অন্য টেবিলের primary key কে refer করে, যাতে দুটি টেবিলের মধ্যে সম্পর্ক তৈরি করা যায়।
4. What is the difference between the VARCHAR and CHAR data types?
   VARCHAR একটি variable length string যা সর্বোচ্চ n character পর্যন্ত সংরক্ষণ করতে পারে। এটি ডাটা সাইজ অনুযায়ী স্পেস সংরক্ষণ করে।
   CHAR একটি ফিক্সড-লেন্থ স্ট্রিং যেখানে প্রত্যেকটি ইনপুট n ক্যারেক্টারের সমান হতে হবে। যদি ইনপুট ছোট হয়, তাহলে বাকি অংশ স্পেস দিয়ে পূরণ করা হয়।
