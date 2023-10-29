# Getting Started

This is a guide to help you get started with the Braingeneers Python Research Template. This template is designed to help you get started with your own research project. It is designed to be flexible and modular, so that you can easily add new features and functionality as you need it.

## Using Codespaces

The easiest way to get started is to use GitHub Codespaces. This will allow you to run the code in the cloud, without having to install anything on your computer. To get started, click the green "Code" button at the top of this page, and select "Open with Codespaces". This will open a new Codespace for you, and you can start working right away.

### Open with Codespaces

Inside of the `README.md` file, you will find a link to open the project in Codespaces. Clicking this link will open a new Codespace for you, and you can start working right away. To update the repo name connected to the "Open with Codespaces" button, you will need to update the `README.md` code.

```md
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/braingeneers/<project_name>?quickstart=1)
```

For example:

```md
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/braingeneers/python-research-template?quickstart=1)
```

Review the [Codespaces documentation](https://docs.github.com/en/github/developing-online-with-codespaces/creating-a-codespace#creating-a-codespace-using-a-template-repository) for more information.

### Customize Codespace

To change the name of your Codespace, click the "Customize" button in the bottom left corner of the screen.

## Running Locally

If you want to run the code locally, you will need to install Python 3.7 or higher. You can download Python from [python.org](https://www.python.org/downloads/). You will also need to install [Git](https://git-scm.com/downloads) if you don't already have it.

## Citations

This guide will help you set up Zenodo DOI badges and enable the integration between your GitHub repository and Zenodo to ensure proper citation of your work. These instructions are adapted from [here](https://gist.github.com/seignovert/ae6771f400ca464d294261f42900823a).

### 1. Setup Zenodo DOI Badge Before the First Release

Before you submit your first release on Zenodo, it's essential to set up the Zenodo DOI badge in your project's documentation or README.

#### Add the Zenodo DOI Badge

1. Obtain your Zenodo DOI (Digital Object Identifier) badge. You will receive this DOI after your first release on Zenodo.

   ![Zenodo DOI Badge](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.1234567-blue.svg)

2. Locate your GitHub repository ID by accessing the GitHub API. Replace `{user}` with your GitHub username/organization_name and `{repo}` with your repository name in the following URL:

   ```bash
   https://api.github.com/repos/{user}/{repo}
   ```

3. Once you have the GitHub repository ID, add the Zenodo DOI badge to your project's `README.md` or `README.rst` file.

#### For `README.md`

In your `README.md` file, add the following Markdown code, replacing `{github_id}` with your GitHub repository ID:

```markdown
[![DOI](https://zenodo.org/badge/{github_id}.svg)](https://zenodo.org/badge/latestdoi/{github_id})
```

#### For `README.rst`

If you're using reStructuredText for your documentation, add the following code, replacing `{github_id}` with your GitHub repository ID:

```rst
|DOI|

.. |DOI| image:: https://zenodo.org/badge/{github_id}.svg
        :target: https://zenodo.org/badge/latestdoi/{github_id}
```

### 2. Submit Your First Release

After adding the Zenodo DOI badge, you are ready to submit your first release. Keep in mind the following notes:

__Notes:__
- The DOI badge will not be issued until you make your first release, but it will be included in your release.
- To set up Zenodo webhooks with GitHub for automated releases, you can refer to the [GitHub documentation](https://guides.github.com/activities/citable-code/).

By following these steps, you ensure that your project is appropriately cited and can be easily referenced by others in the academic and research communities.

### 3. Adding the Repo to the Community

Once you have published your work and obtained a DOI, you can add your DOI to the Braingeneers community on Zenodo. This ensures that your work is associated with the Braingeneers community, making it more discoverable and accessible to others interested in the field.

1. Access Your Published Item: Find and access the Zenodo record for your published work by visiting your Zenodo account and clicking on the respective item.

2. Edit the Metadata: Click on the "Edit" button to access the metadata for your published item.

3. Add the Community: In the metadata editing interface, you will find a field labeled "Communities." Here, you can add the Braingeneers community to your item.

4. Select the Braingeneers Community: Begin typing "Braingeneers" in the "Communities" field. You should see the Braingeneers community appear in the dropdown. Select it.

5. Save Changes: Once you have added the Braingeneers community, save the changes to the metadata.

6. Verify the Addition: After saving, double-check to ensure that your item is now associated with the Braingeneers community.

### 4. Updating the `CITATION.cff`

GitHub allows you to add a CITATION.cff file to your repository to provide citation information for your work.

1. Define the Citation Information

The CITATION.cff file should include the citation details for your work. Here's an example CITATION.cff file with explanations:

```markdown
cff-version: 1.2.0
message: "If you use this software, please cite it as below."
authors:
- family-names: "Author"
  given-names: "First Name"
  orcid: "https://orcid.org/0000-0000-0000-0000" # Optional ORCID ID
title: "Your Research Software"
version: 1.0.0 # Your software's version
doi: 10.5281/zenodo.12345 # Your Zenodo DOI
date-released: 2023-10-27 # Release date
url: "https://github.com/yourusername/reponame" # URL to your GitHub repository
```

- **cff-version**: The version of the CITATION.cff format (use 1.2.0).
- **message**: A message to users regarding how to cite your work.
- **authors**: List of authors with their names and optional ORCID IDs.
- **title**: The title of your software or research.
- **version**: Your software's version number.
- **doi**: The DOI for your work, typically from Zenodo.
- **date-released**: The release date of your software.
- **url**: URL to your GitHub repository.

2. Save and Commit

Save the changes to your CITATION.cff file and commit the changes to your GitHub repository.

3. Verify the Citation Information

Double-check your CITATION.cff file for accuracy. Ensure that all the information, such as the DOI and URLs, is correct.

4. Use the Citation Information

Once you've updated your CITATION.cff file, others can use the citation information provided in your GitHub repository. It will be accessible through the "Cite this repository" link on your repository's landing page.

GitHub will generate citations in APA and BibTeX formats based on the information you provide in the CITATION.cff file, making it easy for others to properly cite your work.

By following these steps, you can ensure that users and researchers know how to cite your work correctly.

__Notes:__
- For more information, you can visit [here](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files).
