// Gulp file I use for developing the new version of my https://anyscreensize.com portfolio website (live soon).

// Requires Gulp v4.
// $ npm uninstall --global gulp gulp-cli
// $ rm /usr/local/share/man/man1/gulp.1
// $ npm install --global gulp-cli
// $ npm install
const { src, dest, watch, series, parallel } = require('gulp');
const browsersync = require('browser-sync').create();
const sass = require('gulp-sass');
const autoprefixer = require('gulp-autoprefixer');
const sourcemaps = require('gulp-sourcemaps');
const plumber = require('gulp-plumber');
const sasslint = require('gulp-sass-lint');
const cache = require('gulp-cached');
const eslint = require('gulp-eslint');
const gulp = require('gulp');
const del = require('del');
const imagemin = require('gulp-imagemin');
const mozjpeg = require('imagemin-mozjpeg');
const newer = require('gulp-newer');
const concat = require('gulp-concat');

// npm install gulp browser-sync gulp-sass gulp-autoprefixer gulp-sourcemaps gulp-plumber gulp-sass-lint gulp-cached gulp-eslint del gulp-imagemin imagemin-mozjpeg gulp-newer gulp-concat --save-dev

// Compile CSS from Sass.
function buildStyles() {
  return src('scss/styles.scss') // The source file with all the @import components in it.
    .pipe(plumber()) // Global error listener.
    .pipe(sourcemaps.init())
    .pipe(sass({
      outputStyle: 'compressed',
      includePaths: [
        "./node_modules/bootstrap/dist/css/",
        "./node_modules/animate.css/",
        "./node_modules/velocity-animate/",
        "./node_modules/@fortawesome/",
        "./node_modules/bxslider/dist/",
        "./node_modules/fullpage.js/dist/"
      ]
    }))
    .pipe(autoprefixer(['last 15 versions', '> 1%', 'ie 8', 'ie 7']))
    .pipe(sourcemaps.write())
    .pipe(dest('dist/css/'))
    .pipe(browsersync.reload({ stream: true }));
}

// BrowserSync Reload
function browserSyncReload(done) {
  browsersync.reload();
  done();
}

// Clean assets
function clean() {
  return del(['dist/img/*']);
}

// Optimize Images
function images() {
  return gulp
    .src('img/**/*')
    .pipe(newer('dist/img'))
    .pipe(
      imagemin([
        imagemin.gifsicle({ interlaced: true }),
        imagemin.jpegtran({ progressive: true }),
        imagemin.optipng({ optimizationLevel: 5 }),
        imagemin.svgo({
          plugins: [
            {
              removeViewBox: false,
              collapseGroups: true
            }
          ]
        })
      ]),
      mozjpeg({quality: 50})
    )
    .pipe(gulp.dest('dist/img'));
}

// Transpile, concatenate and minify scripts
function scripts() {
  return (
    gulp.src([
      "./node_modules/jquery/dist/jquery.js",
      "./node_modules/bootstrap/dist/js/bootstrap.bundle.js",
      "./node_modules/velocity-animate/velocity.min.js",
      "./node_modules/velocity-animate/velocity.ui.min.js",
      "./node_modules/vanilla-lazyload/dist/lazyload.js",
      "./node_modules/bxslider/dist/jquery.bxslider.js",
      "./node_modules/fullpage.js/dist/fullpage.js",
      "js/scripts.js"
    ])
    .pipe(concat("all.js"))
    .pipe(plumber())
    .pipe(gulp.dest("dist/js/"))
    .pipe(browsersync.stream())
  );
}

// Watch changes on all *.scss files and trigger buildStyles() at the end.
function watchFiles() {
  watch(
    ['scss/*.scss', 'scss/**/*.scss'],
    { events: 'all', ignoreInitial: false },
    series(buildStyles)
  );
  watch(['js/*.js', 'js/**/*.js'],
    series(scripts)
  );
  watch(
    ['*.html'],
    series(browserSyncReload)
  );
  watch(['img/*.jpg', 'img/*.png', 'img/*.gif', 'img/*.svg'],
    series(clean, images)
  );
}

// Init BrowserSync.
function browserSync(done) {
  browsersync.init({
    proxy: "http://anyscreensize.local/",
  });
  done();
}

// Export commands.
exports.default = parallel(browserSync, watchFiles); // $ gulp
exports.sass = buildStyles; // $ gulp sass
exports.watch = watchFiles; // $ gulp watch
exports.build = series(buildStyles); // $ gulp build