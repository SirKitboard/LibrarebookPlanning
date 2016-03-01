define([
    'jquery',
    'underscore',
    'react',
    'backbone',
    'jsx!components/admindashboard/reportsTab'
], function($, _,React,Backbone, ReportsTab) { //, BookInfoComponent, BookExtrasComponent, BookRecommendComponent) {
    return React.createClass({
        getInitialState: function() {
            return {
                selectedTab : 0
            }
        },
        switchTab : function(e) {
            var target = e.target;
            var index = parseInt(e.target.getAttribute("data-index"));
            this.setState({
                selectedTab : index
            })
        },
        render: function() {
            var tab = null;
            switch(this.state.selectedTab) {
                case 0:
                    tab = <ReportsTab/>
            }
            return (
                <div id="adminPanel">
                    <div className="white row z-depth-1">
                        <div className="col s12" id="adminTabs">
                          <ul className="tabs">
                            <li className="tab col s3"><a data-index="0" onClick={this.switchTab}>Reports</a></li>
                            <li className="tab col s3"><a data-index="1" onClick={this.switchTab}>Books</a></li>
                            <li className="tab col s3"><a data-index="2" onClick={this.switchTab}>Users</a></li>
                            <li className="tab col s3"><a data-index="3" onClick={this.switchTab}>Publishers</a></li>
                          </ul>
                        </div>
                    </div>
                    {tab}
                </div>
            )
        }
    });
})
