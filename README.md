# Coffeebrew Jekyll Theme

A Jekyll theme for documentation.

[![Gem Version](https://badge.fury.io/rb/coffeebrew_jekyll_docs.svg)](https://badge.fury.io/rb/coffeebrew_jekyll_docs)

## Installation

Add this line to your site's Gemfile:

```ruby
gem 'coffeebrew_jekyll_docs'
```

## Configuration

To use the theme properly, you need to configure in `_config.yml`:

```yml
baseurl: /your_base_url
theme: coffeebrew_jekyll_docs

# The theme uses the jekyll-toc plugin to render table of contents for your content
plugins:
  - jekyll-toc

# Configure the plugin, see https://github.com/toshimaru/jekyll-toc
toc:

# Here's the config for the theme used by this gem doc
coffeebrew_jekyll_docs:
  copyright: "Coffee Brew Apps"
  license:
    name: "MIT License"
    url: "/license.html"
  socials:
    - link: "https://github.com/coffeebrewapps/coffeebrew_jekyll_docs"
      icon: "fa-brands fa-github"
    - link: "https://www.linkedin.com/company/coffeebrewapps/"
      icon: "fa-brands fa-linkedin"
    - link: "mailto:coffeebrewapps+hi@gmail.com"
      icon: "fa-solid fa-envelope"
  powered_by:
    host:
      link: "https://github.com"
      name: "Github Pages"

# This allows for your changelog to be versioned
collections:
  versions:
    output: true

# Add this to the defaults in addition to your other defaults
defaults:
  - scope:
      path: ""
      type: "versions"
    values:
      layout: version
```

Additionally, create the navigation data in `_data/navigation.yml` so that the theme can render the top navbar:

```yml
- name: Home
  link: /
- name: Versions
  link: /versions.html
```

You can of course add more links to the navigation.

Upon building the Jekyll site, the theme should be used to render your content.

## License

See the [LICENSE](LICENSE) file.
