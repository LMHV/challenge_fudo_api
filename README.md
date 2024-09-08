# Fudo Challenge API

## About the project

This Fudo challenge API has focus on creating accounts and sending email confirmations via Mailgun API.
As Mailgun API only deliver real emails if it has a paid service, this project is using letter_opener_web to preview the email it would send.


## Prerequisites

Ensure you have the following installed on your machine:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (v3.3.4)
- [Rails](https://guides.rubyonrails.org/getting_started.html#installing-rails) (v7.2.1)
- [PostgreSQL](https://www.postgresql.org/download/)
- [Bundler](https://bundler.io/) (`gem install bundler` if not installed)

# Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/LMHV/challenge_fudo_api
    cd challenge_fudo_api
    ```

2. Install dependencies:

    ```bash
    bundle install
    ```

3. Set up environment variables:

    Create a `.env` file at the root of the project.
    There is and .env.example file where it shows the credentials used for the project.

    ```bash
    MAILGUN_API_KEY=
    MAILGUN_DOMAIN=
    MAILGUN_SMTP_LOGIN=
    MAILGUN_SMTP_PASSWORD=
    ```

## Database Setup

1. Create and set up the database:

    ```bash
    rails db:create
    rails db:migrate
    ```

## Run the Application

1. Start the Rails server:

    ```bash
    rails server
    ```
