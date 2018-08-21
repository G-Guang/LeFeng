require.config({

	// 配置短路径（别名）
	paths:{
		'jquery':'../lib/jquery-3.2.1',
		'bootstrap':'../lib/bootstrap-3.3.7-dist/js/bootstrap',
		'RL_header':'RL_header',
		'register_main':'register_main',
		'footer':'footer',
		'login_main':'login_main'
	},

	shim:{
		// 配置模块间依赖关系
		// 讲明：lxzoom依赖jquery（加载过程中自动处理先后顺序）
		'bootstrap':['jquery'],
		'RL_header':['jquery'],
		'register_main':['jquery'],
		'footer':['jquery'],
		'login_main':['jquery']
	}
});