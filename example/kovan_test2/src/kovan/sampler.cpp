#include <ros/ros.h>
#include <turtlesim/Pose.h>
#include <kovan/Pose.h>

ros::Publisher * pubPtr;

void sampler_func(const turtlesim::Pose & msg) {
    kovan::Pose msgOut;
    msgOut.x = msg.x;
    msgOut.y = msg.y;
    pubPtr->publish(msgOut);
}

int main(int argc,char ** argv) {
    ros::init(argc,argv,"sampler");
    ros::NodeHandle nh;
    pubPtr = new ros::Publisher(nh.advertise<kovan::Pose>("/pose_publish",1000));
    ros::Subscriber sub = nh.subscribe("/turtle1/pose",1,&sampler_func);

    ros::Rate rate(1);

    while(ros::ok()) {
        ros::spinOnce();
        rate.sleep();
    }

}
