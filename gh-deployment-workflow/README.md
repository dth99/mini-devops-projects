# GitHub Deployment Workflow

A simple demonstration of Continuous Integration and Continuous Deployment using GitHub Actions. This repository contains a static website (`index.html`) that is automatically deployed to GitHub Pages whenever `index.html` is modified on the `main` branch.

---

## 🚀 Live Demo

Your site is published at:


https\://dth99.github.io/gh-deployment-workflow/

## 📂 Repository Structure

```

gh-deployment-workflow/
├── .github/
│   └── workflows/
│       └── deploy.yml        # GitHub Actions workflow
├── index.html               # The static site entry point
└── README.md                # This file

````

---

## 🛠 Getting Started

1. **Clone the repository**  
   ```bash
   git clone https://github.com/dth99/gh-deployment-workflow.git
   cd gh-deployment-workflow
  ```
```
2. **Edit `index.html`**
   Open `index.html` in your preferred editor and make your changes

3. **Commit and push**

   ```bash
   git add index.html
   git commit -m "Update index.html"
   git push origin main
   ```

   > **Note:** Only changes to `index.html` on the `main` branch will trigger the deployment workflow.



* **Trigger**: fires on every push to `main` that modifies `index.html`.
* **Checkout**: pulls the repository into the runner.
* **Deploy**: uses [peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages) to push the contents of the repo root (`./`) to the `gh-pages` branch, which GitHub Pages serves.

![dth99](https://github.com/dth99/gh-deployment-workflow/blob/main/image.png)

![dth99](https://github.com/dth99/gh-deployment-workflow/blob/main/Screenshot%20From%202025-05-28%2020-02-50.png)

---

## 🔍 How It Works

1. **Push Event**
   You push commits to `main`, but only if `index.html` has changes, the workflow is triggered.
2. **Actions Runner**
   GitHub spins up an `ubuntu-latest` runner and checks out your code.
3. **Deploy Step**
   The action takes the current directory (containing `index.html`) and publishes it to the `gh-pages` branch.
4. **GitHub Pages**
   GitHub Pages automatically serves the content of `gh-pages` at `https://dth99.github.io/gh-deployment-workflow/`.


[Project reference](https://roadmap.sh/projects/github-actions-deployment-workflow)

