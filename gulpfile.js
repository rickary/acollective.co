var gulp = require('gulp'),
	sass = require('gulp-sass'),
	notify = require('gulp-notify'),
	minifyCSS = require('gulp-minify-css'),
	concat = require('gulp-concat'),
	uglify = require('gulp-uglify'),
	jshint = require('gulp-jshint'),
	header = require('gulp-header'),
	
	pkg = require('./package.json');
	var banner = ['/**',
	  ' * <%= pkg.name %>',
	  ' * <%= pkg.description %>',
	  ' * @author <%= pkg.author.name %> <<%= pkg.author.email %>>',
	  ' * @version <%= pkg.version %>',
	  ' */',
	  ''].join('\n');



gulp.task('styles', function() {
	gulp.src('_assets/styles/*.scss')
		.pipe(sass())
		.pipe(header(banner, { pkg : pkg } ))
		.pipe(gulp.dest('public/styles/'))
		.pipe(notify({ message: 'Sass Compiled' }));
});



gulp.task('scripts', function() {
	gulp.src('_assets/scripts/*.js')
		.pipe(jshint())
		.pipe(jshint.reporter('default'))
		.pipe(concat("master.js"))
		.pipe(header(banner, { pkg : pkg } ))
		.pipe(gulp.dest('public/scripts/'))
		.pipe(notify({ message: 'Scripts Done'}))
});



gulp.task('watch', function() {
	gulp.watch('_assets/styles/**/*.scss', ['styles']);
	gulp.watch('_assets/scripts/*.js', ['scripts']);
})



gulp.task('build', function() {
	gulp.src('public/styles/*.css')
		.pipe(minifyCSS())
		.pipe(gulp.dest('public/styles/'));
	gulp.src('public/scripts/master.js')
		.pipe(uglify())
		.pipe(gulp.dest('public/scripts/'));
})



gulp.task('default', ['watch']);