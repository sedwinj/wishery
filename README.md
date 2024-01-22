# Wishlister

## Dependencies

- npm 10.3.0
- Java SE 21
- PostgreSQL 14.10

## Setup

### Back-end

Initialize database:

```bash
cd database
./create.sh
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

Wishlister will be a website designed for users to create wishlists for public or private viewing. These wishlists will provide support for users other than the creator to remove items for a list or mark items as complete. This will aid in determining what gift to give a person, and will prevent duplicate gifts.

The service will not be strictly limited to wishlists and gift-giving, and will have other applications depending on the needs and creativity of the user. Examples of other uses include:

- Shopping trips: assign list entries to different users and split up next time you go to the store. Make your next shopping trip lightning fast.
- Community suggestions: invert functionality so that anyone may add, but only the creator can delete. Add a vote to each entry. Community managers can more easily cater to the demands of the people.
- Watchlists: keep your list private (if you want) and note down movies and TV shows you want to watch. Tick them off as you go through the list.

To prevent abuse for more public use cases, permission settings will be included that allow list creators to designate moderators and limit features such as editing, viewing, and voting to specific user groups.

Many of the more complex features will be out-of-the-way, because an average user will not require them, and displaying them to an average user who does not need them can over-complicate list management.

Uniquely, users will be able to create, edit, and share a list without having an account. The creator of anonymous lists will be identified via token-based authentication stored on a device cookie. If a user creates or signs into an account on the device with the token cookie, they can choose to transfer ownership of the list from the token cookie to the account.

Users accessing the website without an account will be rate-limited to prevent DDoS attacks.