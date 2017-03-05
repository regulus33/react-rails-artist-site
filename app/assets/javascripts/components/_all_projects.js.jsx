var AllProjects = React.createClass({
	
	getInitialState() {
		return { projects: [] }
	},

	componentDidMount() {
		$.getJSON('/api/v1/projects.json', (response) => {this.setState({ projects: response }) });
	},
	componentDidUpdate(prevProps, prevState) {
        carousel();
	},

	render(){
		return( 
	<div id="myCarousel" className="carousel slide"> 
				<div className="carousel-inner">
					<div className="active item">
						<img src="https://pixabay.com/static/uploads/photo/2015/10/01/21/39/background-image-967820_960_720.jpg" />
					</div> 

				  {this.state.projects.map(function(project){
		            return(
		            	<div key={project.id} className="item">
							<img src={project.url} alt="" />
						</div> 
					)
		          })}
				
				<a className="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
				<a className="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
	</div>
			

		)

	}
});

