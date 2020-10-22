# Nomad Art Group Website

This is an app for an art group named Nomad. User can visit the website, check the events,
check the artists of this art group. User can sign in and sign out and can choose which
events they went. The admin can add an event, artist, image to an event, video to
an event, a role to an event and new review.

## About this project
Making an app with Ruby on Rails using different models and associations, is the second project
in software engineering immersive course of GA (General Assembly) Sydney.

## Future works on this project.
* Making pages for users as they can make comment about an event.
* Fix the problem of videos embedded from youtube.
* Making better css.

## Link to the app

#### [https://nomad-art-group.herokuapp.com/](https://nomad-art-group.herokuapp.com/)

## Models

### Models Scheme
![Models Scheme](/assets/images/Models-Scheme.png)

### User Model
* Login/Create account option
* My Page: Every user can go and select which event they went.

### Genre Model
* Nomad Art Group works on different art genres like theatre, play reading, etc.
Admin can choose genre for each event. Each genre may be have many events.

### Event Model
* Each event has it own page that show informations, images, videos, artists, genre,
each artist's role.

### Image Model
* Each image belongs to an event and an event may be have many images.

### Video Model
* Each video belongs to an event and an event may be have many videos.

### Role Model
* Each role belongs to an artist in an event. This model gives the chance to admin
to choose role and artist for any event.

## Artist Model
* Each artist can have many roles in different events.

## Layout

### Home page
* User, without sign up and sign in, can check the home page and visit every
event's page and see the images and videos. They can check every artist's page as well.
* User can see two reviews on the home page.
* There is a link to donation page that can be checked.
* A nav bar that navigate to the events, team that shows the artists page and reviews.
By signing in, they can their own page and logout.
* For admin, there is another navigation, that is dropdown one, and admin can go to the
All Users page, which shows all users of the website, New Event page, New Genre page,
New Artist Page, New Role page, New Image page, New video Page and New Review page.

* There is a footer that has links to facebook, instagram, youtube pages of Nomad
Art Group and Contact us page.

### Events page
* In this page, users can see the poster and title of every events. They are linked to every
event page.

### Event page
* In every event page, there are informations about the event and there is a nav bar that user
can see the artists, images and videos of the event.
* Admin has four link at the top of the page to edit and the event, delete a role and at the
bottom of each image and video, a link to delete the image or video.

### Team page
* In the Team page, the user can see photes all the artists who works with Nomad Art Group, with
their name, linked to each artist.

### Artist page
* In every artist page, the user can check the information about an artist.
* Admin can Edit and Delete an artist.


## Techs and libraries
* Ruby on Rails
* Bootstrap
* bcrypt
