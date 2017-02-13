require 'rails_helper'

describe 'POST /commits' do
  it "Creates a new commit" do
    headers = {"CONTENT-TYPE" => 'application/json'}
    params = '{
  "ref": "refs/heads/master",
  "before": "a5e1370476c1d5ac8f4b26170e17acdf9894be83",
  "after": "d6f9bbc2ee5e03a209ff0bf9cd40fab59c1b617f",
  "created": false,
  "deleted": false,
  "forced": false,
  "base_ref": null,
  "compare": "https://github.com/jcasimir/junk-commits/compare/a5e1370476c1...d6f9bbc2ee5e",
  "commits": [
    {
      "id": "d6f9bbc2ee5e03a209ff0bf9cd40fab59c1b617f",
      "tree_id": "63db48f7ca87eaa2de6824416b4e501443318723",
      "distinct": true,
      "message": "Adds text: O’er-prized all popular rate, in my false brother",
      "timestamp": "2017-02-13T09:55:15-07:00",
      "url": "https://github.com/jcasimir/junk-commits/commit/d6f9bbc2ee5e03a209ff0bf9cd40fab59c1b617f",
      "author": {
        "name": "Jeff Casimir",
        "email": "jeff@casimircreative.com",
        "username": "jcasimir"
      },
      "committer": {
        "name": "Jeff Casimir",
        "email": "jeff@casimircreative.com",
        "username": "jcasimir"
      },
      "added": [

      ],
      "removed": [

      ],
      "modified": [
        "the_tempest.txt"
      ]
    }
  ],
  "head_commit": {
    "id": "d6f9bbc2ee5e03a209ff0bf9cd40fab59c1b617f",
    "tree_id": "63db48f7ca87eaa2de6824416b4e501443318723",
    "distinct": true,
    "message": "Adds text: O’er-prized all popular rate, in my false brother",
    "timestamp": "2017-02-13T09:55:15-07:00",
    "url": "https://github.com/jcasimir/junk-commits/commit/d6f9bbc2ee5e03a209ff0bf9cd40fab59c1b617f",
    "author": {
      "name": "Jeff Casimir",
      "email": "jeff@casimircreative.com",
      "username": "jcasimir"
    },
    "committer": {
      "name": "Jeff Casimir",
      "email": "jeff@casimircreative.com",
      "username": "jcasimir"
    },
    "added": [

    ],
    "removed": [

    ],
    "modified": [
      "the_tempest.txt"
    ]
  },
  "repository": {
    "id": 76878898,
    "name": "junk-commits",
    "full_name": "jcasimir/junk-commits",
    "owner": {
      "name": "jcasimir",
      "email": "jeff@turing.io"
    },
    "private": false,
    "html_url": "https://github.com/jcasimir/junk-commits",
    "description": null,
    "fork": false,
    "url": "https://github.com/jcasimir/junk-commits",
    "forks_url": "https://api.github.com/repos/jcasimir/junk-commits/forks",
    "keys_url": "https://api.github.com/repos/jcasimir/junk-commits/keys{/key_id}",
    "collaborators_url": "https://api.github.com/repos/jcasimir/junk-commits/collaborators{/collaborator}",
    "teams_url": "https://api.github.com/repos/jcasimir/junk-commits/teams",
    "hooks_url": "https://api.github.com/repos/jcasimir/junk-commits/hooks",
    "issue_events_url": "https://api.github.com/repos/jcasimir/junk-commits/issues/events{/number}",
    "events_url": "https://api.github.com/repos/jcasimir/junk-commits/events",
    "assignees_url": "https://api.github.com/repos/jcasimir/junk-commits/assignees{/user}",
    "branches_url": "https://api.github.com/repos/jcasimir/junk-commits/branches{/branch}",
    "tags_url": "https://api.github.com/repos/jcasimir/junk-commits/tags",
    "blobs_url": "https://api.github.com/repos/jcasimir/junk-commits/git/blobs{/sha}",
    "git_tags_url": "https://api.github.com/repos/jcasimir/junk-commits/git/tags{/sha}",
    "git_refs_url": "https://api.github.com/repos/jcasimir/junk-commits/git/refs{/sha}",
    "trees_url": "https://api.github.com/repos/jcasimir/junk-commits/git/trees{/sha}",
    "statuses_url": "https://api.github.com/repos/jcasimir/junk-commits/statuses/{sha}",
    "languages_url": "https://api.github.com/repos/jcasimir/junk-commits/languages",
    "stargazers_url": "https://api.github.com/repos/jcasimir/junk-commits/stargazers",
    "contributors_url": "https://api.github.com/repos/jcasimir/junk-commits/contributors",
    "subscribers_url": "https://api.github.com/repos/jcasimir/junk-commits/subscribers",
    "subscription_url": "https://api.github.com/repos/jcasimir/junk-commits/subscription",
    "commits_url": "https://api.github.com/repos/jcasimir/junk-commits/commits{/sha}",
    "git_commits_url": "https://api.github.com/repos/jcasimir/junk-commits/git/commits{/sha}",
    "comments_url": "https://api.github.com/repos/jcasimir/junk-commits/comments{/number}",
    "issue_comment_url": "https://api.github.com/repos/jcasimir/junk-commits/issues/comments{/number}",
    "contents_url": "https://api.github.com/repos/jcasimir/junk-commits/contents/{+path}",
    "compare_url": "https://api.github.com/repos/jcasimir/junk-commits/compare/{base}...{head}",
    "merges_url": "https://api.github.com/repos/jcasimir/junk-commits/merges",
    "archive_url": "https://api.github.com/repos/jcasimir/junk-commits/{archive_format}{/ref}",
    "downloads_url": "https://api.github.com/repos/jcasimir/junk-commits/downloads",
    "issues_url": "https://api.github.com/repos/jcasimir/junk-commits/issues{/number}",
    "pulls_url": "https://api.github.com/repos/jcasimir/junk-commits/pulls{/number}",
    "milestones_url": "https://api.github.com/repos/jcasimir/junk-commits/milestones{/number}",
    "notifications_url": "https://api.github.com/repos/jcasimir/junk-commits/notifications{?since,all,participating}",
    "labels_url": "https://api.github.com/repos/jcasimir/junk-commits/labels{/name}",
    "releases_url": "https://api.github.com/repos/jcasimir/junk-commits/releases{/id}",
    "deployments_url": "https://api.github.com/repos/jcasimir/junk-commits/deployments",
    "created_at": 1482165456,
    "updated_at": "2016-12-19T16:37:36Z",
    "pushed_at": 1487004918,
    "git_url": "git://github.com/jcasimir/junk-commits.git",
    "ssh_url": "git@github.com:jcasimir/junk-commits.git",
    "clone_url": "https://github.com/jcasimir/junk-commits.git",
    "svn_url": "https://github.com/jcasimir/junk-commits",
    "homepage": null,
    "size": 127,
    "stargazers_count": 0,
    "watchers_count": 0,
    "language": null,
    "has_issues": true,
    "has_downloads": true,
    "has_wiki": true,
    "has_pages": false,
    "forks_count": 0,
    "mirror_url": null,
    "open_issues_count": 0,
    "forks": 0,
    "open_issues": 0,
    "watchers": 0,
    "default_branch": "master",
    "stargazers": 0,
    "master_branch": "master"
  },
  "pusher": {
    "name": "jcasimir",
    "email": "jeff@turing.io"
  },
  "sender": {
    "login": "jcasimir",
    "id": 43102,
    "avatar_url": "https://avatars.githubusercontent.com/u/43102?v=3",
    "gravatar_id": "",
    "url": "https://api.github.com/users/jcasimir",
    "html_url": "https://github.com/jcasimir",
    "followers_url": "https://api.github.com/users/jcasimir/followers",
    "following_url": "https://api.github.com/users/jcasimir/following{/other_user}",
    "gists_url": "https://api.github.com/users/jcasimir/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/jcasimir/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/jcasimir/subscriptions",
    "organizations_url": "https://api.github.com/users/jcasimir/orgs",
    "repos_url": "https://api.github.com/users/jcasimir/repos",
    "events_url": "https://api.github.com/users/jcasimir/events{/privacy}",
    "received_events_url": "https://api.github.com/users/jcasimir/received_events",
    "type": "User",
    "site_admin": false
  }
}'
    post '/commits', headers: headers, params: params

    expect(response).to be_success

  end
end
