# Tweet-Stream

This Python module allows you to track activities of Twitter users via the
[Twitter Streaming API](https://developer.twitter.com/en/docs/tweets/filter-realtime/overview/statuses-filter).

Logged activities include:
* Any status messages of the observed user group
* All retweets (including quotes) by other users
* All replies by other users

All activities are saved to a SQLite3 database, extracting the most interesting
attributes in the process.

## Setup

### Conda environment (recommended)

Requirement:
* [Anaconda installation](https://www.anaconda.com/download/) for setting up
the environment 

After cloning the repository, run
```
sh setup.sh
```
inside the project directory in order to setup a *conda* environment containing
all required Python packages to run *tweet-stream*.

Afterwards, update the `.env.example` file with your Twitter, AWS and email
credentials in order to make use of the whole functionality of *tweet-stream*.
Rename the file to `.env` after customization.

### Manual setup

Requirements:
* See the `tweet-stream.yml` file for a complete list of required Python packages

Install the required packages manually, e.g., using *pip*, in your environment.

Finally, enter your Twitter, AWS and email credentials into the `.env.example` file
and rename it to `.env`.

## Usage

The Twitter IDs of users to track are passed to the module via a newline-separated
text file. See `data/user_ids.txt` for a concrete example which is ready to use.

In order to test an example stream, run
```
sh run-example.sh
```
inside the project directory.
This will track activities from users in the example file (mainly companies,
politicians, athletes, journalists and other celebrities) and save all tweets,
retweets, quotes and replies into a SQLite database file called `tweets.db`.

As monitoring of long-running processes is extremely important, this repository
comes with example scripts to backup the database file to AWS S3 and send update
notifications via email. The corresponding scripts can be found in the `scripts`
directory.
Run
```
sh monitoring-example.sh
```
inside the project directory in order to test these scripts (after entering your
credentials during setup).

The monitoring scripts are mainly thought to be used periodically, e.g., in the
context of a cron job.

## Roadmap

The following extensions should be implemented for more well-rounded functionality:
- [ ] Provide more flexible interface to module
- [ ] Enable topic tracking, e.g., via hashtags or search strings
- [ ] Add more information to update notifications
- [ ] Create Docker runtime environment
- [ ] Register module with *pip* and *conda*

## Contact

Contact me for more information on this project via:
* [GitHub](https://github.com/felixpeters)
* [Twitter](https://twitter.com/_fpeters)
* [LinkedIn](https://www.linkedin.com/in/petersfelix/)
