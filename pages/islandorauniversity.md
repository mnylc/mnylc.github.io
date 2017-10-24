---
title: Islandora University
permalink: /islandorauniversity/
---

## Islandora 101: An Introduction - 2 days 

We encourage you to with to start with this introductory session, operating under the assumption that “you don’t really know what you don’t know”. 

* How to use Islandora University
    * Units are discrete, but the secret sauce of Islandora is its various components and how they interact
    * It is always better to know a little more than you thought you needed to know
* What is Islandora?
* Objects and Datastreams
* Full explanation of the stack, all components
    * Drupal
    * SOLR
    * Fedora
* What can it be used for? What is it not so good at?
* How does it compare to other solutions, is it right for you?
* How will I use Islandora on a daily basis: what resources will I need, and what will I need to know in order to do that comfortably?

## Drupal 101 - 2 days  

Drupal is the top of the Islandora stack. This unit gives an overview of the Drupal CMS, which acts as the UI and the admin interface for much of Islandora. Everyone needs this. Topics include:

* Tags, taxonomy, Contents, Fields
* Edit, create, delete, and customise
* Asset storage
* Creating image displays
* Enabling/disabling Drupal modules
* Managing users and permissions
* Drupal Structure and Blocks
* Themes
* Which pieces of Drupal work/don’t with Islandora

After this unit is completed, a librarian who will never need to touch a line of code and is only responsible for adding, editing, or deleting content can skip the next units on Fedora 101 and SOLR 101 and move ahead to Islandora 102. 

## Fedora 101 - 2 days 

Fedora is the bottom of the Islandora stack. This unit gives an overview of Fedora 3.8 and the Fedora 4 specification, and details how it interacts with the rest of the Islandora stack. It also describes how Fedora makes data portable across other access solutions, for example, Hydra. Developers and librarian-turned-developers will benefit from this, and sysadmins or devops personnel will find this information essential when thinking about the ideal server architecture for their needs. 
Topics include:

* Storage options
* Access control (XACML, global policies)
* Linked data support
* Logs and warnings
* Performance

The DevOps 101 unit below includes coverage of more advanced topics for developers and sysadmins who want to delve further into Fedora.

## SOLR 101 - 2 days

SOLR powers the indexing and query functionality that sits between your Fedora repository and your Drupal public web UI and Drupal administration UI. Without it, you wouldn’t be able to explore, search, and find your assets in any meaningful way. 
Topics include:

* Admin Interface  
* Understanding how the index works
* Schema.xml and field transformation flow 
* How Solr understands my fields 	
* Querying/ request handlers 

## Islandora 102 - 2 days

This unit expands upon the overview from Islandora 101, and explores the details of Islandora administration and configuration via the GUI. For a librarian who will never touch a line of code or troubleshoot by exploring error logs, this module may be as far as they need to go: you will learn how to integrate Drupal and vanilla Islandora without ever coding. Experienced developers and sysadmins who have spent no time interacting specifically with Islandora are encouraged to take part in this module so they understand the tools that are and aren’t available to an everyday administrator.
Topics include:

* Solution packs, deep dive
    * Content models
    * Workflows
    * Ingest forms
* Ingesting content
    * Individual object management
    * Batch object management
* Contributed Islandora modules
    * Islandora Find and Replace
* Version control
* Drupal / Islandora configuration and interaction tricks
    * Tokens and linking
    * Path Auto and menus 
    * Usage Stats (google) and/or PIWIK Integrations

## Islandora 201 

This unit is about Islandora extensions and workflow tools. This unit is for developers and librarians who want to delve more into advanced Islandora workflows. Topics include:

* More about the Islandora stack and how the pieces work together
* Islandora Utilities and workflow tools
    * Drush
* Extensions and external tools
    * IIIF

## Islandora 202 - 2 days 

This unit is focused on metadata and object management. This unit is for librarians, as well as developers who  want to gain an understanding of metadata in Islandora. Topics include:

* Advanced metadata and object management 
    * Islandora and RDF
    * Complex object types
    * XSLT
    * Authority records
    * MODS, MODS, MODS
* Metadata harvesting
    * OAI-PMH and others

## Islandora 301 
This unit is for developers, and goes on to cover:

* Development workflow and tools
    * Editors: Textmate, Atom, PHPStorm and others
    * PHPCS and PHPCBF: your best friends
    * Vagrant and local dev
    * Common mistakes with Drupal and islandora
    * Testing PHP code
* Drupal hooks, extending Drupal functionality
* Dissecting module code
* Anatomy of a solution pack
* When do I need a new CMODEL?
* Tuque and manipulating Fedora Objects

## Islandora 302 
This unit is for designer/developers, and goes on to cover:

* Drupal hooks, extending Drupal functionality
* Drupal custom theme development best practices
* Contributed Drupal modules focused on display and presentation
* Template files and template preprocess files
* Javascript and AJAX
* CSS

## DevOps 101

Performance is everything: if users need to wait 3 minutes for an image to load on your Islandora instance, nobody will ever visit the site. Getting the most out of Islandora means understanding and controlling your server environment. Understanding how your instance may need to scale over time, how much traffic you expect to drive to your site, and doing all of this within your unique institutional constraints, are all vitally important. This unit is for sysadmins, IT staff, or devops professionals who need to support an Islandora instance in a production environment. Much of this is an introduction to other open source projects that are used in many different environments, not just Islandora.

* Back end setup and configuration
    * Planning: hardware, specifications, project requirements
    * Memory(RAM) and it’s role in JAVA based backends
* Storage: speed vs size 
    * Linux/UNIX 101
    * SSH
    * Services
    * Ports/ Proxies and security
* Languages and software package versions
    * Tomcat 7 
    * Fedora 3.81 / Mulgara / ActiveMQ (broker)
    * Fedora GSearch
    * Adore-Djatoka
    * Solr 4.10.x
    * Drupal Servlet Filter
    * Apache 2 and Apache Mods (proxy, etc)
    * PHP 5.6 or 7.0
    * Mysql 5.x or 6.x
* Performance enhancement
    * Varnish
    * Memcached
    * Fine tuning PHP7 and opcaches
	
Front end setup and configuration
* Drupal 7.5.x. 
    * Install
    * Configure
    * Secure
* Tuque
* Libraries
* Islandora and all its modules (32)
    * Islandora Core
    * Solution Packs
    * Utilities
    * Dependencies	

Workflow tools and strategies to make your life easier
* Drush
* Composer
* Vagrant (as a deployment and learning tool)
* Backups
* Updates
* Log rotation
* DevOps 102 

This unit covers managing growth, and Islandora in the cloud. It is for sysadmins and IT professionals or devops professionals who need to support an Islandora instance in a production environment.

* Going beyond single machine Islandora
* Role separation, VPN
* Amazon services 101
    * Administer EC2/VPN/VPC/Credentials/ACL/IP from scratch
    * Understanding Amazon billing
    * EC2/EBS deployment strategies
    * Choosing the right instances and storage options	
    * Preservation options and S3 Buckets
    * Automated backups, snapshotting,Lambda
    * Storage workflows: from quick access (S3) to deep storage (Glacier)



