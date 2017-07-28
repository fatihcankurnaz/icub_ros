#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <tf2_msgs/TFMessage.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <sensor_msgs/LaserScan.h>
#include <nav_msgs/Odometry.h>
#include <kovan/Pose.h>
#include <stdlib.h>
#include <math.h>
#include <unistd.h>
#include <vector>
kovan::Pose current;

void callback(const nav_msgs::Odometry & msg) {
    tf::Quaternion q(msg.pose.pose.orientation.x, msg.pose.pose.orientation.y, msg.pose.pose.orientation.z, msg.pose.pose.orientation.w);
    tf::Matrix3x3 m(q);
    double roll, pitch, yaw;
    m.getRPY(roll, pitch, yaw);
    current.x = msg.pose.pose.position.x;
    current.y = msg.pose.pose.position.y;
    current.theta = yaw;
}

void laserCallback(const sensor_msgs::LaserScan & msg) {

}
int main(int argc,char** argv) {
    ros::init(argc,argv,"target");
    ros::NodeHandle nh;
    detect.resize(640);
    if(argc < 3) {
        ROS_FATAL_STREAM("need at least 2 arguments");
        return 0;
    }

    kovan::Pose dest;
    dest.x = atof(argv[1]);
    dest.y = atof(argv[2]);



    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel_mux/input/teleop",1000);
    ros::Subscriber sub = nh.subscribe("/odom",10,&callback);
    ros::Subscriber scansub = nh.subscribe("/scan",1,&laserCallback);



    return 0;


}
