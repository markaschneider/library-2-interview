# 📘 Technical Interview Brief: Lending Library App (Ruby on Rails)

**Role**: Senior Software Engineer  
**Topic**: Rails Data Modeling & Use Case Implementation

---

## 🧾 Scenario

You're tasked with designing the basic data model and functionality for a Ruby on Rails web application that manages the operations of a **lending library** — a place where users can borrow and return physical copies of books.

This exercise focuses on:

- Rails-style **ActiveRecord modeling**
- **Use case design** and reasoning
- Efficient **queries** and **background job** logic
- Communicating assumptions and trade-offs clearly

---

## ✅ What to Deliver

Please sketch the **ActiveRecord models**, their relationships, and how your design supports the use cases below. You may use:

- Annotated model classes  
- Schema-like definitions  
- Plain-text explanations for relationships and logic  
- Optional: Migrations or job/mail classes (in outline form)  

> Your solution does **not** need to be a fully working Rails app — focus on structure and reasoning.

---

## 📌 Use Cases

### 1. ✅ A user can check out a book (if it’s available)

- A book must have at least one **available copy** to be checked out.
- When checked out, associate the copy with the user and record the **due date**.
- Prevent double-lending of the same copy.

---

### 2. 🔄 A user can return a book

- A user returns a specific **copy**.
- The system marks the **checkout record** as returned (e.g., with a `returned_at` timestamp).
- The copy becomes available again for checkout.

---

### 3. 📋 A librarian can view which books are currently checked out and by whom

- Show a report of **currently checked-out books**, grouped or listed with:
  - Book title and author  
  - Copy identifier  
  - The borrowing user  
  - Checkout and due dates  

---

### 4. 📦 (Optional) A book can have multiple copies, each independently lendable

- Support modeling both:
  - The abstract concept of a **Book** (e.g., “The Hobbit” by Tolkien)
  - **Physical copies** of that book (e.g., Copy #1, Copy #2...)
- Checkouts are tied to specific **copies**, not just the book.

---

### 5. ⏰ Nightly job to notify users with overdue books

- A background job runs nightly and:
  - Finds **users** with **one or more overdue checkouts**
  - Sends **a single email per user** listing **all** their overdue books

- A checkout is overdue if:

  ```ruby
  due_date < Date.today && returned_at IS NULL
  ```

- Expectation:
  - Avoid N+1 queries
  - Use ActiveRecord idioms
  - Efficient grouping and delivery

---

### 6. 🔍 Basic book search by author, with availability info
- Users can search books by partial author name (case-insensitive).

- For each matching book:
  - Indicate if at least one copy is available
  - If all copies are checked out, show the soonest due date

---

🧠 Considerations
- Use Rails best practices
- Think about data integrity and validation
- Try to make queries efficient and expressive
- Don’t worry about front-end/UI code

