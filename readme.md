# Argumentum ad Verecundiam

Have you ever tried to speak to a group, but you lacked the credibility to
be taken seriously?

That lack of credibility was probably due to not having slides to look like
a prepared presenter. Maybe tools like Microsoft Office are too expensive.
Maybe tools like LibreOffice are too slow or too big to download quickly.
Maybe the laptop you have available for the presentation is a slow netbook
with no disk space to install an office suite.

This problem is now solved! All you need is an internet connection and a web
browser!

Now you can have prepared slides for your next talk, and look like a pro!
People will respect your opinions, because having slides means you're an
expert!

## How do I use this miraculous tool?

Simply clone this repo to your computer. Then run the create.sh script
followed by the name of your presentation. 

```bash
git clone https://github.com/mnebuerquo/argumentum-ad-verecundiam.git
cd argumentum-ad-verecundiam
./create.sh My Awesome Presentation
cd ../my-awesome-presentation
```

This will create a new presentation for you in the same directory where you
cloned this repo. It will initialize the presentation, create a readme, and make it
ready for you to host on Github Pages. It will even initialize a git repo
for you and make the initial commit!

## How do I make a presentation with this?

The presentation is rendered using [Remark](https://remarkjs.com). It is written 
in [Markdown](https://daringfireball.net/projects/markdown/syntax), specifically, 
[Github Flavored Markdown](https://help.github.com/articles/basic-writing-and-formatting-syntax/).

To make the presentation work, just edit the `presentation.md` file in your
new repo. Follow the [remark guide to formatting](https://github.com/gnab/remark/wiki/Markdown).
To preview your presentation without pushing to Github, drag your
`presentation.md` file to [Remarkize](https://remarkjs.com/remarkise).

When you push your new repo to github, visit the repo settings page and set
the Github Pages branch to 'master'. The 'index.html' page in your repo will
allow the presentation to run when served from Github Pages with no more
configuration from you.

## Common Pitfalls

The slide separators `---` or incremental slide separators `--` may not
render correctly if followed by additional whitespace on the same line.
Also, remember the newline both before and after the separators.

Another difficulty is determining how much content can go on a single slide.
This gets a little easier with practice, but you have to preview the content
to be sure. I have found [Remarkize](https://remarkjs.com/remarkise) to be
very useful for a quick preview.

## Attribution

The 'readme.md' file created by default in your presentation repo contains a
link to this repo as attribution. Please keep a link in your repo so that
other people can find this project. You can clone this project and do
whatever you like with it, but please keep a link to the original somewhere.

Send me pull requests! Make it better! More features, more portability,
whatever.

I'd like to see people put this to use. Even if no one else but me uses it,
it's okay because it was a fun use of a Sunday afternoon.  
