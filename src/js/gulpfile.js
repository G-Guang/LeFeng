/*
	这里的代码不是在浏览器执行
	而是在nodejs环境下执行


	目的：sass->css
		* 利用gulp和gulp-sass作为工具来进行编译
 */

// 安装成功后，必须引入gulp和gulp-sass
let gulp = require('gulp');
let sass = require('gulp-sass');


// gulp的使用
// gulp都是通过任务的形式来执行某些功能的


// 1.创建任务
gulp.task('compileSass',function(){
	// 执行任务时，会执行这里的代码

	// 在此把sass编译成css
	// 2.找出sass文件
	gulp.src(['../sass/*.scss'])	//返回一个文件流

	// 编译scss->css
	.pipe(sass({outputStyle:'compact'}).on('error', sass.logError))	// 得到css文件流
	
	// 输出到硬盘
	.pipe(gulp.dest('../css/'))
});


// 自动化编译
gulp.task('autoSass',function(){
	// 监听文件修改，如果有修改，则执行compileSass任务
	gulp.watch('../sass/*.scss',['compileSass']);
});


// 默认任务
gulp.task('default',function(){
	console.log(666)
});