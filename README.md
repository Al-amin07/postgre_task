1. What is PostgreSQL?
-- PostgreSQL একটি ওপেন-সোর্স, অবজেক্ট-রিলেশনাল ডাটাবেজ ম্যানেজমেন্ট সিস্টেম (ORDBMS), যা high performance , data intregrity এবং এক্সটেনসিবিলিটি প্রদান করে।
   
2. What is the purpose of a database schema in PostgreSQL?
-- ডাটাবেজ schema হল ডাটাবেজের গঠন বা structure সংজ্ঞায়িত করার একটি উপায়। PostgreSQL-এ schema ব্যবহার করে ডাটাবেজকে লজিক্যাল গ্রুপে ভাগ করা যায় এবং ডাটা ম্যানেজমেন্ট সহজ করে।
   
3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
-- primary key একটি টেবিলের unique এবং not null column যা প্রতিটি row আলাদা চিহ্নিত করে।
   foriegn key অন্য টেবিলের primary key কে refer করে, যাতে দুটি টেবিলের মধ্যে সম্পর্ক তৈরি করা যায়।
   
4. What is the difference between the VARCHAR and CHAR data types?
-- VARCHAR একটি variable length string যা সর্বোচ্চ n character পর্যন্ত সংরক্ষণ করতে পারে। এটি ডাটা সাইজ অনুযায়ী স্পেস সংরক্ষণ করে।
   CHAR একটি ফিক্সড-লেন্থ স্ট্রিং যেখানে প্রত্যেকটি ইনপুট n ক্যারেক্টারের সমান হতে হবে। যদি ইনপুট ছোট হয়, তাহলে বাকি অংশ স্পেস দিয়ে পূরণ করা হয়।
   
5. Explain the purpose of the WHERE clause in a SELECT statement.
-- WHERE clause ব্যবহার করে নির্দিষ্ট শর্ত অনুযায়ী ডাটা ফিল্টার করা যায়।
   
6. What are the LIMIT and OFFSET clauses used for?
-- LIMIT এটি রেকর্ড সংখ্যা Limit করতে ব্যবহার করা হয়।
-- OFFSET এটি নির্দিষ্ট সংখ্যক রেকর্ড skip করে পরবর্তী রেকর্ড থেকে রিটার্ন করে।

7. How can you modify data using UPDATE statements?
-- UPDATE statement ব্যবহার করে নির্দিষ্ট টেবিলের রেকর্ড আপডেট করা যায়।

8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
-- JOIN ব্যবহার করে একাধিক টেবিল থেকে related data একত্র করা যায়। PostgreSQL-এ বিভিন্ন ধরনের JOIN রয়েছে:
      ** INNER JOIN: দুটি টেবিলের সাধারণ রেকর্ড রিটার্ন করে।
      ** LEFT JOIN: প্রথম টেবিলের সব রেকর্ড এবং দ্বিতীয় টেবিলের ম্যাচিং রেকর্ড রিটার্ন করে।
      ** RIGHT JOIN: দ্বিতীয় টেবিলের সব রেকর্ড এবং প্রথম টেবিলের ম্যাচিং রেকর্ড রিটার্ন করে।
      ** FULL JOIN: উভয় টেবিলের সমস্ত রেকর্ড রিটার্ন করে।
   
9. Explain the GROUP BY clause and its role in aggregation operations
-- GROUP BY clause use করে ডাটা গ্রুপ করা এবং প্রতিটি গ্রুপের উপর অ্যাগ্রিগেট ফাংশন প্রয়োগ করা যায়।

10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL
-- COUNT(): রেকর্ড সংখ্যা গণনা করে।
-- SUM(): নির্দিষ্ট কলামের মোট যোগফল প্রদান করে।
-- AVG(): নির্দিষ্ট কলামের গড় মান প্রদান করে।

   
