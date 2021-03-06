+++
title = "Contribute"
id = "contact"
+++

# Contribute to Epic Lunch Runs

[Epic Lunch Runs](https://www.epiclunchruns.com) is a community supported blog all about epic meal trips taken by airlines employees. In the airline industry, it's a tradition to find fun places to "non-rev" and if that location happens to have some great lunch spots, it's even better! 

This blog is built on the [Hugo](https://gohugo.io) framework, allowing for easy posting by community members! 

## Installation

### Mac

1. Install [Homebrew](https://brew.sh)
2. Install Hugo via Homebrew

    ```bash
    brew install hugo
    ```
### Windows

1. Install [Chocolatey](https://www.chocolatey.org)
2. Install Hugo via Chocolatey

    ```bash
    choco install hugo
    ```

## Development
### Creating New Blog Post

1. Fork and Clone this [repo](https://www.github.com/defilan/epiclunch).
2. To create new blog post, navigate to the `epiclunch` directory in the project and run the following:
    ```bash
    hugo new blog/*nameofyourpost*/index.md
    ```
3. In your code editor, add and fill in the following parameters:
    ```bash
    ---
    title: "Pizza at 11,000ft - Snowbird, Utah"
    date: 2021-05-24T23:47:12-07:00
    tags: ["mountains","utah","pizza","lunch"]
    categories: ["lunch trip"]
    banner: "img/banners/snowbird1.jpeg"
    author: "Christopher P. Maher"
    draft: false
    ---
    ```
    Add a `title` and make sure the `date` is correct. 
    
    `Tags` is where you categorize your post. Look at other posts and see if there are common tags you can match. Please add new ones unique to your post. 

    `Categories` are for "bigger picture" groupings. `Lunch Trip` and `Overnight Trip` are the two big ones right now.

    `Banner` is your post's main photo that shows up in the Blog page. 

    `Author` is pretty self-explanatory but this would be you :)

    `Draft` is a flag for testing. If you are doing local builds, keep this as `true`. When ready to publish your post, please change this to `false`

4. Write your post! Hugo is all about markdown, so please reference your favorite cheat sheet (here is my [goto](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)). 

5. All of your pictures you wish to use in your post must be added to the directory your `index.md` is located in. For example, all of the pictures for the [Juneau trip](https://www.epiclunchruns.com/blog/2021/05/24/juneau2016/)) are located in the `content/blog/juneau2016` directory. 
    * To use your photos in your post, follow this pattern:
        ```bash
        {{ < img sizes="(min-width: 35em) 1200px, 100vw" src="snowbird1.jpeg" alt="Snowbird from aerial tram" > }}
        ```
    * This code block allows for responsive pictures. The options for sizes (1200px was used in this example) are 300px, 500px, 800px, 1200px, and 1500px.
    * Again, all pictures you reference in this post must be located in your post directory

### Testing New Post
1. When you want to test your new post, navitate to the `epiclunch` directory within the repo and run the following:
    ```bash
    hugo server -D
    ```
    * This will host the site in memory on your computer. Open your browser to http://localhost:1313. You should see the Epic Lunch Runs site. Navitate to `Blog` to see your post. It should also appear on the homepage.
2. When you are satisfied with your post, change the `Draft` from `true` to `false` in your post.

### Add yourself as an author

1. Add your perfered profile picture to the `img/testimonials` directory in `epiclunch`.
2. Navigate to the `data/testimonials` directory in `epiclunch`.
3. Take notice of the current `yaml` files in the directory. Create a new `yaml` file with the next sequential number.
4. This is where you add your quick bio and link to your profile picture. It should look something like this:
    ```bash
    text: "Howdy! I???m a software engineering manager and overall geek. I love traveling with friends to grab an epic meal! I've traveled to Alaska, Oregon, California, and Texas in search of great meals for lunch. I'm excited to share ideas with fellow avgeeks!"
    name: "Chris Maher"
    position: "Software Engineering Manager"
    avatar: "img/testimonials/maher.jpg"
    ```



## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.