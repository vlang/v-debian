# v-debian
V Debian package

Ubuntu Releases found in `ubuntu/`
Debian Releases found in `debian/`

Further mentions of the `debian/` will mean the package information for Ubuntu and Debian builds, but should not be mixed up with the top-level `debian/` folder.

Don't change the package folder of `debian/` to avoid confusion with the top-level `debian/` release folder, this will create errors.

## Building Packages:
- Copy point release from [releases](https://github.com/vlang/v/releases)
- Move the active data to a `vlang/` directory
  - Copy and paste the needed `debian/` folder from this repo.
- In `debian/` folder, change data:
  - `debian/control` : uploader. change detail: `your name <your.email@example.com>`
  - `debian/changelog` : New release information, example below:
  ```
  vlang (0.1.27.7) focal; urgency=medium

    * Rebuild new package

   -- Kai Lyons <kai.lyons@kaix.live>  Sun, 09 Jun 2020 03:05:00 -0600
  ```
  Note that changelog is super sensitive. Read [changelog-info.md](https://github.com/vlang/v-debian/blob/master/changelog-info.md) for more information
  - Nothing else in the debian folder should need to be changed.
- Compress new orig.tar.*
  - Can be any .tar type (gz, xz, bz2, etc).
  - `vlang_0.<release>.orig.tar.gz`
  - Launchpad will not accept the same version twice, if needed, add an extra point to the attempt.
- Build and upload to Launchpad:
  - `debuild -S`
  - `dput ppa:vlang/vlang *_source.changes`
  - Upload permissions needed, create Launchpad account with keys. Then ask Kai (kai.lyons@kaix.live) for upload permissions. Setup dput, then you are able to upload.
