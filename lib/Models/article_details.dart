import 'package:programming_quiz/Models/article.dart';

class ArticleDetails{
  static Map<String, List<Article>> articlesByLanguage = {
    'Python' : [
      Article(
          title: "Introduction to Python for Beginners",
          description: "This article is designed for those who are new to programming and want to learn Python. It covers the fundamental concepts, including variables, data types, loops, and control flow. The article also provides an introduction to Python’s simple syntax, making it easy for beginners to start writing their own programs. It includes practical examples and tips to help learners build a solid foundation in Python programming.",
          image: "image"
      ),
      Article(
          title: "Advanced Python Features You Should Know",
          description: "In this article, experienced Python developers can explore advanced features that enhance the power and flexibility of the language. Topics like decorators, generators, and context managers are discussed in-depth, showing how they can simplify complex coding tasks. The article also highlights best practices for writing more efficient, readable, and maintainable Python code. With clear examples and real-world scenarios, it’s an essential read for those looking to take their Python skills to the next level.",
          image: "image"
      )
    ],
    'JavaScript' : [
      Article(
          title: "Mastering JavaScript Basics",
          description: "This article introduces JavaScript’s core concepts, including variables, functions, loops, and conditional statements. It explains how JavaScript interacts with HTML and CSS, providing clear examples for beginners. The article aims to help new developers grasp foundational JavaScript principles and start writing their own scripts with ease.",
          image: "image"
      ),
      Article(
          title: "Exploring Advanced JavaScript Concepts",
          description: "This article delves into advanced JavaScript topics like closures, promises, async/await, and event delegation. It explains how these concepts can optimize code, manage asynchronous tasks, and enhance user interactions. Suitable for developers with basic knowledge, it offers practical examples to master complex JavaScript features and improve coding efficiency.",
          image: "image"
      )
    ],
    'HTML' : [
      Article(
          title: "HTML Basics for Beginners",
          description: "This article covers the essential building blocks of HTML, such as elements, attributes, and structure. It explains how to create web pages using headings, paragraphs, links, images, and forms. With simple examples, this guide helps beginners learn how to structure web content and start creating their own websites.",
          image: "image"
      ),
      Article(
          title: "Advanced HTML Techniques You Should Know",
          description: "This article explores advanced HTML concepts like semantic elements, multimedia embedding, and forms management. It introduces HTML5 features such as video and audio tags, local storage, and geolocation. Aimed at developers with basic knowledge, it provides techniques for building more accessible, interactive, and modern web applications.",
          image: "image"
      )
    ],
    'Kotlin' : [
      Article(
          title: "Getting Started with Kotlin for Android Development",
          description: "This article introduces Kotlin as a modern programming language for Android development. It covers the basics of syntax, variables, functions, and object-oriented principles, providing examples of how Kotlin simplifies Android app development. The guide is aimed at beginners looking to transition from Java to Kotlin for mobile development.",
          image: "image"
      ),
      Article(
          title: "Advanced Kotlin Features for Professional Developers",
          description: "This article explores Kotlin's advanced features, including higher-order functions, coroutines, and extension functions. It provides in-depth examples of how these features improve code readability, performance, and maintainability. Ideal for experienced developers, it shows how to leverage Kotlin’s full potential in building scalable, efficient applications.",
          image: "image"
      )
    ],
    'PHP' : [
      Article(
          title: "PHP Basics for Web Development",
          description: "This article covers the fundamental concepts of PHP, such as variables, loops, functions, and arrays. It explains how PHP integrates with HTML to create dynamic web pages. With practical examples, beginners will learn how to use PHP to handle form data, interact with databases, and build simple web applications.",
          image: "image"
      ),
      Article(
          title: "Advanced PHP Techniques for Experienced Developers",
          description: "This article dives into advanced PHP topics, including object-oriented programming, namespaces, and trait usage. It also explores best practices for security, error handling, and performance optimization. Aimed at experienced developers, it provides tips for writing clean, efficient, and maintainable PHP code for large-scale web applications.",
          image: "image"
      )
    ],
    'SQL' : [
      Article(
          title: "SQL Basics: A Beginner's Guide",
          description: "This article introduces the basic concepts of SQL, such as SELECT, INSERT, UPDATE, and DELETE statements. It explains how to interact with databases, create tables, and retrieve data using simple queries. Aimed at beginners, this guide helps readers get comfortable with SQL syntax and database management essentials.",
          image: "image"
      ),
      Article(
          title: "Advanced SQL Queries and Techniques",
          description: "This article covers advanced SQL topics like JOINs, subqueries, indexing, and transaction management. It explains how to optimize queries, handle complex data relationships, and improve database performance. Ideal for experienced users, it provides practical examples of how to use SQL to manage and manipulate large datasets efficiently.",
          image: "image"
      )
    ],
    'Java' : [
      Article(
          title: "Java Basics: A Guide for Beginners",
          description: "This article introduces Java's fundamental concepts, including variables, data types, control flow, and object-oriented programming. It explains how Java works with classes and objects, providing a solid foundation for those new to programming. With clear examples, beginners can easily learn to write simple Java applications.",
          image: "image"
      ),
      Article(
          title: "Mastering Advanced Java Features",
          description: "This article delves into advanced Java concepts such as generics, multi-threading, and lambda expressions. It explores how these features enhance code efficiency, readability, and concurrency management. Aimed at experienced developers, this article provides practical examples and best practices for utilizing Java’s advanced capabilities in large-scale applications.",
          image: "image"
      )
    ],
    'C++' : [
      Article(
          title: "C++ Basics: A Beginner's Introduction",
          description: "This article covers the foundational concepts of C++, including variables, data types, functions, and control structures. It introduces object-oriented programming principles like classes and objects. Beginners will learn how to write basic C++ programs and understand the structure of the language with clear, practical examples.",
          image: "image"
      ),
      Article(
          title: "Advanced C++ Techniques for Expert Developers",
          description: "This article explores advanced C++ topics such as smart pointers, templates, and exception handling. It provides insights into memory management, multi-threading, and the Standard Template Library (STL). Aimed at experienced developers, this article offers strategies for writing efficient, maintainable, and scalable C++ code in complex projects.",
          image: "image"
      )
    ],
    'C#' : [
      Article(
          title: "C# Basics: A Beginner’s Guide",
          description: "This article introduces the fundamental concepts of C#, covering variables, data types, loops, functions, and basic object-oriented programming. It walks beginners through how to write simple programs and create classes and objects. With hands-on examples, it helps new developers grasp C# syntax and understand its usage in applications.",
          image: "image"
      ),
      Article(
          title: "Advanced C# Programming Techniques",
          description: "This article delves into advanced C# concepts such as LINQ, delegates, events, and asynchronous programming. It also covers memory management and optimization techniques. Ideal for experienced developers, this guide demonstrates how to leverage C#’s advanced features to write more efficient, scalable, and maintainable code for complex applications.",
          image: "image"
      )
    ],
    'CSS' : [
      Article(
          title: "CSS Basics: Styling Your First Web Page",
          description: "This article introduces the core concepts of CSS, including selectors, properties, and values. It covers how to apply styles to HTML elements, control layout with margins and padding, and manage colors and fonts. Perfect for beginners, it helps users create their first styled web pages with practical examples.",
          image: "image"
      ),
      Article(
          title: "Advanced CSS Techniques for Modern Web Design",
          description: "This article explores advanced CSS techniques, such as Flexbox, CSS Grid, animations, and transitions. It explains how to create responsive designs, optimize layouts, and implement interactive visual effects. Aimed at experienced developers, it provides in-depth examples to help create sophisticated, modern web designs with CSS.",
          image: "image"
      )
    ],
  };
}