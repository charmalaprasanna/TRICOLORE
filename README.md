# Tricolore: Multi-Behavior User Profiling for Enhanced Candidate Generation in Recommender Systems

Final-year B.Tech (CSE) project, Sri Venkateswara College of Engineering.

Tricolore is a multi-behavior recommendation framework that models user preferences from several feedback types
(click, share, like, comment) using a multi-bucket architecture, behavior-wise multi-view fusion, and
popularity-balanced sampling. It improves candidate generation diversity and cold-start performance.

## Modules
- **Admin**: login, view/authorize users, add post category/posts, view posts, reviews, recommended posts, multi-behavior user profiles, result charts
- **User**: register, login, profile, search friends, friend requests, search/like/review/recommend posts

## Tech stack
Java, JSP, HTML/CSS/JavaScript, MySQL, Apache Tomcat

## Files in this repo
| File | Purpose |
|---|---|
| `index.html` | Home page |
| `A_AllRecommendedPosts.jsp` | Admin: choose a category to view recommended posts |
| `A_ViewPostRecommendations.jsp` | Admin: recommendations (by/to) for a selected post |
| `connect.jsp.example` | Template for the DB connection (copy to `connect.jsp`) |

## Setup
1. Install JDK, Apache Tomcat and MySQL.
2. Create the database and tables (`categories`, `posts`, `postrecommendtofriend`, ...).
3. Copy `connect.jsp.example` to `connect.jsp` and add your DB credentials.
4. Add `css/`, `js/`, `images/` and the required libraries (`cos.jar` / com.oreilly.servlet, BouncyCastle, MySQL connector) to `WEB-INF/lib`.
5. Deploy to Tomcat and open `http://localhost:8080/tricolore/index.html`.

## Author
Charmala Prasanna Lakshmi
