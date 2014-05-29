# neurd Jekyll Theme

They say three times the charm, so here is another free responsive Jekyll theme for you. I've learned a ton since open sourcing my first two themes [on Github](http://github.com/wem3), and wanted to try a few new things this time around. If you've used my previous themes most of this should be familiar territory...

## What neurd brings to the table:

* Responsive templates for post, page, and post index `_layouts`. Looks great on mobile, tablet, and desktop devices.
* Gracefully degrades in older browsers. Compatible with Internet Explorer 8+ and all modern browsers.
* Modern and minimal design.
* Sweet animated menu.
* Readable typography to make your words shine.
* Support for large images to call out your favorite posts.
* Comments powered by [Disqus](http://disqus.com) if you choose to enable.
* Social Sharing links for Facebook, Twitter, and Google+ if you choose to enable.
* Simple and clear permalink structure.
* [Open Graph](https://developers.facebook.com/docs/opengraph/) and [Twitter Cards](https://dev.twitter.com/docs/cards) support for a better social sharing experience.
* Simple [custom 404 page](http://wem3.github.io/freshMRI/404.html) to get you started.
* Stylesheets for Pygments and Coderay [syntax highlighting](http://wem3.github.io/freshMRI/code-highlighting-post/) to make your code examples look snazzy
* [Grunt](http://gruntjs.com) build script for easy theme development
* [Available in Spanish](https://github.com/cruznick/freshMRI/tree/es). Thanks [@cruznick](https://github.com/cruznick)!

![neurd Theme Preview screenshot](http://wem3.github.io/freshMRI/images/freshMRI-preview.jpg)

---

General notes and suggestions for customizing **neurd**.

## Basic Setup for a new Jekyll site

1. [Install Bundler](http://bundler.io) `gem install bundler` and then install [Jekyll](http://jekyllrb.com) and all dependencies `bundle install`.
2. Fork the [neurd Jekyll Theme repo](https://github.com/wem3/freshMRI/fork).
3. Clone the repo you just forked and rename it.
4. Edit `_config.yml` to personalize your site.
5. Check out the sample posts in `_posts` to see examples for pulling in large feature images, assigning categories and tags, and other YAML data.
6. Read the documentation below for further customization pointers and documentation.

[Demo the Theme](http://wem3.github.io/freshMRI)

**Pro-tip:** Delete the `gh-pages` branch after cloning and start fresh by branching off `master`. There is a bunch of garbage in `gh-pages` used for the theme's demo site that I'm guessing you don't want on your site.

---

## Setup for an Existing Jekyll site

1. Clone the following folders: `_includes`, `_layouts`, `assets`, and `images`.
2. Clone the following files and personalize content as need: `about.md`, `posts.html`, `index.html`, `tags.html`, and `feed.xml`.
3. Set the following variables in your `config.yml` file:

``` yaml
title:            Site Title
description:      Describe your website here.
disqus_shortname: shortname
# Your site's domain goes here. When working locally use localhost server leave blank
# PS. If you set this wrong stylesheets and scripts won't load and most links will break.
# PPS. If you leave it blank for local testing home links won't work, they'll be fine for live domains though.
url:              http://localhost:4000

# Owner/author information
owner:
  name:           Your Name
  avatar:         avatar.jpg
  bio:            "Your bio goes here. It shouldn't be super long but a good two sentences or two should suffice."
  email:          you@email.com
  # Social networking links used in footer. Update and remove as you like.
  twitter:
  facebook:
  github:
  stackexchange:
  linkedin:
  instagram:
  flickr:
  tumblr:
  # For Google Authorship https://plus.google.com/authorship
  google_plus:

# Analytics and webmaster tools stuff goes here
google_analytics:
google_verify:
# https://ssl.bing.com/webmaster/configure/verify/ownership Option 2 content= goes here
bing_verify:

# Links to include in top navigation
# For external links add external: true
links:
  - title: Theme Setup
    url: /theme-setup
  - title: External Link
    url: http://wem3.github.io
    external: true

# http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
timezone:    America/New_York
future:      true
pygments:    true
markdown:    kramdown

# Amount of posts to show on home page
paginate: 5
```

---

## More Theme Setup Goodness

To learn more about how to customize the theme, include feature images in posts, use the Grunt build script, and some other junk, [read up here](http://wem3.github.io/freshMRI/theme-setup/).

---

## Questions?

Having a problem getting something to work or want to know why I setup something in a certain way? Ping me on Twitter [@wem3](http://twitter.com/wem3) or [file a GitHub Issue](https://github.com/wem3/freshMRI/issues/new). And if you make something cool with this theme feel free to let me know.

---

## License

This theme is free and open source software, distributed under the [GNU General Public License](https://github.com/wem3/freshMRI/blob/master/LICENSE) version 2 or later. So feel free to to modify this theme to suit your needs.
