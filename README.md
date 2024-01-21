# Wishlister

## Dependencies

- npm 10.3.0
- Java SE 21
- SQLite 3.41.2

## Setup

### Back-end

Initialize database:

```bash
cd database
sqlite3 dev.db < CreateDB.sql
sqlite3 dev.db < PopulateDev.sql
```

### Front-end

Install npm:

```bash
cd frontend
npm install
```

## Execution Instructions

### Front-end

```bash
cd frontend
npm start
```

## End Goal

*This is an overview of what the finished product will look like. Not every feature listed in this section is necessarily implemented presently.*

Wishlister will be a website designed for users to create wishlists for public or private viewing. These wishlists provide optional support for users other than the creator to remove items for a list, or mark items as complete. This will aid in determining what gift to give a person, and will prevent duplicate gifts.

The service is not strictly limited to wishlists and gift-giving, and can have other applications depending on the needs and creativity of the user. Examples of other uses include:

- Shopping trips: assign list entries to different users and split up next time you go to the store. Make your next shopping trip lightning fast.
- Community suggestions: invert functionality so that anyone may add, but only the creator can delete. Add a vote to each entry. Community managers can more easily cater to the demands of the people.
- Watchlists: keep your list private (if you want) and note down movies and TV shows you want to watch. Tick them off as you go through the list.
- And more

To prevent abuse for more public use cases, lists can have features such as editing, viewing, and voting set to account-only mode, or have certain features limited to designated accounts. Choose appropriate restrictions depending on the importance of the list and who you are sharing it with. Bear in mind that when you share a link to a list, recipients can reshare that link with other people.

Uniquely, users will be able to create, edit, and share a list without having an account. The creator of anonymous lists will be identified via token-based authentication stored on a device cookie. If a user creates or signs into an account on the device with the token cookie, they can choose to transfer ownership of the list from the token cookie to the account.

Users accessing the website without an account will be rate-limited to prevent DDoS attacks.