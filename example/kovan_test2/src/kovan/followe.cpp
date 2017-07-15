#include <ros/ros.h>
#include <turtlesim/Pose.h>
#include <geometry_msgs/Twist.h>
#include <kovan/Pose.h>
#include <math.h>
#include <queue>

std::queue<kovan::Pose> holder;
turtlesim::Pose current_pose;
void sample_pose(const kovan::Pose & msg) {
    holder.push(msg);
}

void follower_pose(const turtlesim::Pose & msg) {
    current_pose.x = msg.x;
    current_pose.y = msg.y;
    current_pose.theta = msg.theta;
}


int main(int argc,char ** argv) {
    ros::init(argc,argv,"follower");
    ros::NodeHandle nh;
    current_pose.x = 3;
    current_pose.y = 3;
    current_pose.theta =0;
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/turtle2/cmd_vel",1000);
    ros::Subscriber sub = nh.subscribe("/pose_publish",1000,&sample_pose);
    ros::Subscriber sub2 = nh.subscribe("/turtle2/pose",1000,&follower_pose);
    ros::Rate rate(10);
    while(ros::ok()) {
        ros::spinOnce();
        geometry_msgs::Twist msg;
        if(holder.empty())
            continue;
        else {
            double disx = holder.front().x - current_pose.x;
            double disy = holder.front().y - current_pose.y;
            double angle = atan2(disy,disx);
            angle = angle - current_pose.theta;
            if(angle >3.14 )
                angle -= 6.28;
            if (angle < -3.14)
                angle +=6.28;
            msg.angular.z = angle;

            double distance =  sqrt((disx*disx)+(disy*disy));
            msg.linear.x = distance*0.35;

            if(distance<0.8)
                holder.pop();

            pub.publish(msg);


        }
        rate.sleep();
    }


}
