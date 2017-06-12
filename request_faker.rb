#!/var/www/rvm/rubies/ruby-current/bin/ruby

require 'digest'
require 'active_support/all'

PAYLOAD_PARAMS = <<-HEREDOC
{
  "ref": "refs/heads/master",
  "before": "c9f1b11055b33ac7a03cc626466ff51495f11632",
  "after": "50913cbb67bc20d1cefc9856ee5b10ce56f78821",
  "created": false,
  "deleted": false,
  "forced": false,
  "base_ref": null,
  "compare": "https://github.com/roqua/autovar/compare/c9f1b11055b3...50913cbb67bc",
  "commits": [
    {
      "id": "50913cbb67bc20d1cefc9856ee5b10ce56f78821",
      "tree_id": "184deb6e18a6fa4027e2c5dbcff634fbc9b5519c",
      "distinct": true,
      "message": "Update README.md",
      "timestamp": "2017-02-07T23:10:18+01:00",
      "url": "https://github.com/roqua/autovar/commit/50913cbb67bc20d1cefc9856ee5b10ce56f78821",
      "author": {
        "name": "Ando Emerencia",
        "email": "ando.emerencia@gmail.com",
        "username": "emerencia"
      },
      "committer": {
        "name": "GitHub",
        "email": "noreply@github.com",
        "username": "web-flow"
      },
      "added": [

      ],
      "removed": [

      ],
      "modified": [
        "README.md"
      ]
    }
  ],
  "head_commit": {
    "id": "50913cbb67bc20d1cefc9856ee5b10ce56f78821",
    "tree_id": "184deb6e18a6fa4027e2c5dbcff634fbc9b5519c",
    "distinct": true,
    "message": "Update README.md",
    "timestamp": "2017-02-07T23:10:18+01:00",
    "url": "https://github.com/roqua/autovar/commit/50913cbb67bc20d1cefc9856ee5b10ce56f78821",
    "author": {
      "name": "Ando Emerencia",
      "email": "ando.emerencia@gmail.com",
      "username": "emerencia"
    },
    "committer": {
      "name": "GitHub",
      "email": "noreply@github.com",
      "username": "web-flow"
    },
    "added": [

    ],
    "removed": [

    ],
    "modified": [
      "README.md"
    ]
  },
  "repository": {
    "id": 6825773,
    "name": "autovar",
    "full_name": "roqua/transid",
    "owner": {
      "name": "roqua",
      "email": "info@roqua.nl"
    },
    "private": false,
    "html_url": "https://github.com/roqua/autovar",
    "description": "A package to automate and simplify the process from raw data to VAR models.",
    "fork": false,
    "url": "https://github.com/roqua/autovar",
    "forks_url": "https://api.github.com/repos/roqua/autovar/forks",
    "keys_url": "https://api.github.com/repos/roqua/autovar/keys{/key_id}",
    "collaborators_url": "https://api.github.com/repos/roqua/autovar/collaborators{/collaborator}",
    "teams_url": "https://api.github.com/repos/roqua/autovar/teams",
    "hooks_url": "https://api.github.com/repos/roqua/autovar/hooks",
    "issue_events_url": "https://api.github.com/repos/roqua/autovar/issues/events{/number}",
    "events_url": "https://api.github.com/repos/roqua/autovar/events",
    "assignees_url": "https://api.github.com/repos/roqua/autovar/assignees{/user}",
    "branches_url": "https://api.github.com/repos/roqua/autovar/branches{/branch}",
    "tags_url": "https://api.github.com/repos/roqua/autovar/tags",
    "blobs_url": "https://api.github.com/repos/roqua/autovar/git/blobs{/sha}",
    "git_tags_url": "https://api.github.com/repos/roqua/autovar/git/tags{/sha}",
    "git_refs_url": "https://api.github.com/repos/roqua/autovar/git/refs{/sha}",
    "trees_url": "https://api.github.com/repos/roqua/autovar/git/trees{/sha}",
    "statuses_url": "https://api.github.com/repos/roqua/autovar/statuses/{sha}",
    "languages_url": "https://api.github.com/repos/roqua/autovar/languages",
    "stargazers_url": "https://api.github.com/repos/roqua/autovar/stargazers",
    "contributors_url": "https://api.github.com/repos/roqua/autovar/contributors",
    "subscribers_url": "https://api.github.com/repos/roqua/autovar/subscribers",
    "subscription_url": "https://api.github.com/repos/roqua/autovar/subscription",
    "commits_url": "https://api.github.com/repos/roqua/autovar/commits{/sha}",
    "git_commits_url": "https://api.github.com/repos/roqua/autovar/git/commits{/sha}",
    "comments_url": "https://api.github.com/repos/roqua/autovar/comments{/number}",
    "issue_comment_url": "https://api.github.com/repos/roqua/autovar/issues/comments{/number}",
    "contents_url": "https://api.github.com/repos/roqua/autovar/contents/{+path}",
    "compare_url": "https://api.github.com/repos/roqua/autovar/compare/{base}...{head}",
    "merges_url": "https://api.github.com/repos/roqua/autovar/merges",
    "archive_url": "https://api.github.com/repos/roqua/autovar/{archive_format}{/ref}",
    "downloads_url": "https://api.github.com/repos/roqua/autovar/downloads",
    "issues_url": "https://api.github.com/repos/roqua/autovar/issues{/number}",
    "pulls_url": "https://api.github.com/repos/roqua/autovar/pulls{/number}",
    "milestones_url": "https://api.github.com/repos/roqua/autovar/milestones{/number}",
    "notifications_url": "https://api.github.com/repos/roqua/autovar/notifications{?since,all,participating}",
    "labels_url": "https://api.github.com/repos/roqua/autovar/labels{/name}",
    "releases_url": "https://api.github.com/repos/roqua/autovar/releases{/id}",
    "deployments_url": "https://api.github.com/repos/roqua/autovar/deployments",
    "created_at": 1353666207,
    "updated_at": "2016-12-07T14:28:38Z",
    "pushed_at": 1486505420,
    "git_url": "git://github.com/roqua/autovar.git",
    "ssh_url": "git@github.com:roqua/autovar.git",
    "clone_url": "https://github.com/roqua/autovar.git",
    "svn_url": "https://github.com/roqua/autovar",
    "homepage": "https://autovar.nl",
    "size": 7585,
    "stargazers_count": 1,
    "watchers_count": 1,
    "language": "R",
    "has_issues": true,
    "has_downloads": true,
    "has_wiki": true,
    "has_pages": false,
    "forks_count": 0,
    "mirror_url": null,
    "open_issues_count": 0,
    "forks": 0,
    "open_issues": 0,
    "watchers": 1,
    "default_branch": "master",
    "stargazers": 1,
    "master_branch": "master",
    "organization": "roqua"
  },
  "pusher": {
    "name": "emerencia",
    "email": "ando.emerencia@gmail.com"
  },
  "organization": {
    "login": "roqua",
    "id": 598697,
    "url": "https://api.github.com/orgs/roqua",
    "repos_url": "https://api.github.com/orgs/roqua/repos",
    "events_url": "https://api.github.com/orgs/roqua/events",
    "hooks_url": "https://api.github.com/orgs/roqua/hooks",
    "issues_url": "https://api.github.com/orgs/roqua/issues",
    "members_url": "https://api.github.com/orgs/roqua/members{/member}",
    "public_members_url": "https://api.github.com/orgs/roqua/public_members{/member}",
    "avatar_url": "https://avatars.githubusercontent.com/u/598697?v=3",
    "description": ""
  },
  "sender": {
    "login": "emerencia",
    "id": 607965,
    "avatar_url": "https://avatars.githubusercontent.com/u/607965?v=3",
    "gravatar_id": "",
    "url": "https://api.github.com/users/emerencia",
    "html_url": "https://github.com/emerencia",
    "followers_url": "https://api.github.com/users/emerencia/followers",
    "following_url": "https://api.github.com/users/emerencia/following{/other_user}",
    "gists_url": "https://api.github.com/users/emerencia/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/emerencia/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/emerencia/subscriptions",
    "organizations_url": "https://api.github.com/users/emerencia/orgs",
    "repos_url": "https://api.github.com/users/emerencia/repos",
    "events_url": "https://api.github.com/users/emerencia/events{/privacy}",
    "received_events_url": "https://api.github.com/users/emerencia/received_events",
    "type": "User",
    "site_admin": false
  }
}
HEREDOC

def generate_params
  { payload: PAYLOAD_PARAMS }
end

myparams = generate_params
msg = "curl -v -X POST "
myparams.each do |k,v|
  par = v.to_query(k.to_sym).gsub(/^([^=]*=)(.+)$/,'\1"\2"')
  msg += "-d #{par} "
end
msg += "http://aceli.nl:4567/"
system(msg)
