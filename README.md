# qt-Spotify
This will be a clone of spotify, made for learning and practice

## Simplified plan:
- make simple CMake app with QtCreator with Qt6
- Take Training app, take qml and copy most of the code
- adjust colors and some interactions, but not burn more than 5h on it
- copy authentications, but make the code better
- take a look at GraphQL for firebase, it would be better for storing user data, playlists and so on, implement it (https://medium.com/swlh/graphql-server-using-firebase-97c9ec101948)
- try to stream just one song from any kind of server
- make mock musicians, songs, popups when you play using MVVM pattern
- make docker and start testing app on mobile
- test functionalities, logging in, signing in, making playlists, songs and so on, loading this data when sign in
- add many songs 
- add most basic payment and block 1 feature without it
- maybe add elastic search
- try to break the app and make a list of every single bug and slowly fix them


## Expectations:
### 1. User Interface (UI):
This will be done first, QML code will be taken from https://github.com/percit/Training-App-Qt and adjusted to
copy the original Spotify 

### 2. Client-Side Application:
Firebase: authenticate, store playlists and other user data, such as which musicians somebodys like
Also we need a way to store and stream music TODO
Stripe: process payments
Elastic Search: searching for songs (nice to have)

### 3. Continuous Integration and Deployment:
Build app using only docker, not using Qt Creator and actual phone, being able to build Android app with just Docker


## High level: possible interactions to mimic:
### 1. Music Catalog:

A vast catalog of songs, albums, and artists will be stored in a database.
This database will include metadata like song titles, artist names, album covers, and audio files.
The catalog can be periodically updated with new releases.
### 2. Streaming Service:

The app will support streaming audio content to the user's device.
Music tracks can be streamed in real-time from the server, or downloaded for offline listening.
Implement a content delivery network (CDN) for efficient content delivery to users.
### 3. Playlists and Libraries:

Users can create and manage playlists and library collections.
These playlists can be public or private.
Users can add songs to their library, create custom playlists, and organize their music.
### 4. Search and Discovery:

Implement a powerful search feature for users to find music.
Use recommendation algorithms to suggest music based on user preferences.
Provide a personalized "Discover Weekly" playlist.
### 5. Social Features:

Users can follow other users, share playlists, and see what their friends are listening to.
Implement social features to create a sense of community.
### 6. Notifications:

Send push notifications for new releases, friend requests, and recommendations.
Use Firebase Cloud Messaging or a similar service for push notifications.
### 7. Offline Mode:

Allow users to download music for offline listening.
Implement DRM (Digital Rights Management) to protect downloaded content.