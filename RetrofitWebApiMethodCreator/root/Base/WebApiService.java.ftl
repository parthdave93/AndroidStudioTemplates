package ${packageName}.service;


import ${responsePackage};
<#if !(import okhttp3.MultipartBody;?has_content)>
import okhttp3.MultipartBody;
</#if>
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.Url;
import rx.Observable;

/**
 * Created by Parth on 7/23/2016.
 */
public interface WebApiService {

    @FormUrlEncoded
    @POST(Constants.SERVICE_LOGIN)
    Observable<LoginResult> loginApiCall(@Field(Constants.PARAM_U_NAME) String userName, @Field(Constants.PARAM_U_PASSWORD) String password, @FieldMap HashMap<String, String> defaultParams);

    @Multipart
    @POST(Constants.SERVICE_SIGNUP)
    Observable<SignUpResult> signUpApiCall(@PartMap HashMap<String, RequestBody> singupParams,
                                           @Part MultipartBody.Part file,
                                           @PartMap HashMap<String, RequestBody> defaultParams);



    @Multipart
    @POST(Constants.SERVICE_USER_FACEBOOK_API)
    Observable<SignUpResult> facebookLoginApiCall(@PartMap HashMap<String, RequestBody> singupParams,
                                           @Part MultipartBody.Part file,
                                           @PartMap HashMap<String, RequestBody> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_SIGNUP)
    Observable<SignUpResult> signUpApiCall(@FieldMap HashMap<String, String> singupParams,
                                           @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_USER_FACEBOOK_API)
    Observable<SignUpResult> facebookLoginApiCall(@FieldMap HashMap<String, String> singupParams,
                                           @FieldMap HashMap<String, String> defaultParams);

    @Multipart
    @POST(Constants.SERVICE_EDITPROFILE)
    Observable<SignUpResult> editProfile(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @PartMap HashMap<String, RequestBody> singupParams,
                                         @Part MultipartBody.Part file,
                                         @PartMap HashMap<String, RequestBody> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_EDITPROFILE)
    Observable<SignUpResult> editProfile(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @FieldMap HashMap<String, String> singupParams,
                                         @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_LOGOUT)
    Observable<LoginResult> logoutApiCall(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_USERTOKEN) String token, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_SET_DEVICETOKEN)
    Observable<CommonResult> registerDeviceToken(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_USERTOKEN) String token, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_SOUND_SHARE)
    Observable<CommonResult> sendShareSoundAnalytics(@Field(Constants.PARAM_U_ID) String userId, @Field("sound_id") String soundId);



    @FormUrlEncoded
    @POST(Constants.SERVICE_ADD_USER_AS_FRIEND)
    Observable<AddFriendResult> addFriendByUserName(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_U_NAME_FRIEND) String userName, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_ADD_USER_AS_FRIEND)
    Observable<AddFriendResult> addFriendByGuiID(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_GUI_ID) String guiID, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_ADD_USER_AS_FRIEND)
    Observable<AddFriendResult> addFriendByPhone(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_U_PHONE) String phone, @Field(Constants.PARAM_COUNTRY_CODE) String countryCode, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_INVITEFRIENDCOUNT)
    Observable<CommonResult> inviteFriendCount(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId,@Field(Constants.PARAM_GUI_ID) String guiId, @FieldMap HashMap<String, String> defaultParams);



    @FormUrlEncoded
    @POST(Constants.SERVICE_SENDNOTIFICATION)
    Observable<SendSoundResult> sendSoundUser(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_U_ID_TO) String toUser, @Field(Constants.PARAM_SOUND_FILE) String soundFile,
                                              @Field(Constants.PARAM_MESSAGE) String message,
                                              @Field(Constants.PARAM_CATEGORY_NAME) String categoryName,
                                              @Field(Constants.PARAM_SOUND_ID) String soundId
            , @Field(Constants.PARAM_SOUND_IMAGE) String soundImage, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_SENDNOTIFICATION_BROADCAST)
    Observable<SendSoundResult> sendSoundBroadcast(
            @Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_BROADCAST_ID) String toUser, @Field(Constants.PARAM_SOUND_FILE) String soundFile,
            @Field(Constants.PARAM_MESSAGE) String message,
            @Field(Constants.PARAM_CATEGORY_NAME) String categoryName,
            @Field(Constants.PARAM_SOUND_ID) String soundId, @Field(Constants.PARAM_SOUND_IMAGE) String soundImage, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_SENDNOTIFICATION_GROUP)
    Observable<SendSoundResult> sendSoundGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_GROUP_ID) String toUser, @Field(Constants.PARAM_SOUND_FILE) String soundFile,
                                               @Field(Constants.PARAM_MESSAGE) String message,
                                               @Field(Constants.PARAM_CATEGORY_NAME) String categoryName,
                                               @Field(Constants.PARAM_SOUND_ID) String soundId, @Field(Constants.PARAM_SOUND_IMAGE) String soundImage, @FieldMap HashMap<String, String> defaultParams);


    @Multipart
    @POST(Constants.SERVICE_SENDNOTIFICATION)
    Observable<SendSoundResult> sendCustomSoundUser(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @PartMap HashMap<String, RequestBody> singupParams,
                                                    @Part MultipartBody.Part file,
                                                    @PartMap HashMap<String, RequestBody> defaultParams);

    @Multipart
    @POST(Constants.SERVICE_SENDNOTIFICATION_GROUP)
    Observable<SendSoundResult> sendCustomSoundGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @PartMap HashMap<String, RequestBody> singupParams,
                                                     @Part MultipartBody.Part file,
                                                     @PartMap HashMap<String, RequestBody> defaultParams);


    @Multipart
    @POST(Constants.SERVICE_SENDNOTIFICATION_BROADCAST)
    Observable<SendSoundResult> sendCustomSoundBroadcast(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @PartMap HashMap<String, RequestBody> singupParams,
                                                         @Part MultipartBody.Part file,
                                                         @PartMap HashMap<String, RequestBody> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_GET_USERS_CONTACTS)
    Observable<UsersByPhoneResponse> getPhoneUsers(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_U_PHONES) String phones, @Field(Constants.PARAM_U_NAMES) String userNames,
                                                   @Field(Constants.PARAM_U_DISPLAY_PICS) String displayPics,
                                                   @Field(Constants.PARAM_U_CONTACT_IDS) String contactIds, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_USER_UPDATE)
    Observable<LoginResult> changeUsername(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_USERNAME) String userName, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_USER_RESET_PASSWORD)
    Observable<CommonResult> changePassword(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_old_PASSWORD) String oldPassword,  @Field(Constants.PARAM_NEW_PASSWORD) String newPassword, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_MUTEUNMUTE_USER)
    Observable<CommonResult> DNDStatusChange(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_MUTE_STATUS) String muteStatus, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_SET_USERPHONENO)
    Observable<CommonResult> setPhoneNumber(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_U_PHONE) String phone, @Field(Constants.PARAM_COUNTRY_CODE) String countryCode, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_BLOCK_UNBLOCK_USER)
    Observable<CommonResult> blockUnblockUser(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_U_ID_BLOCK) String blockUserId, @Field(Constants.PARAM_BLOCK_STATUS) String status, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_REMOVE_FRIEND)
    Observable<LoginResult> removeUser(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_U_NAME) String username, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_GET_FRIENDS)
    Observable<FriendListResult> getFriendList(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_GET_USER_DETAIL)
    Observable<UserDetailsResult> getUserDetails(@Field(Constants.PARAM_U_ID) String userId, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_VERIFY_OTP)
    Observable<CommonResult> verifyOTP( @Field(Constants.PARAM_USER_ID) String userId, @Field(Constants.PARAM_OTP_CODE) String otpCode,
                                       @Field(Constants.PARAM_COUNTRY_CODE) String countryCode,
                                       @Field(Constants.PARAM_U_PHONE) String phone, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_FACEBOOK_SEND_OTP)
    Observable<SignUpResult> verifyFbOTP(
                                         @Field(Constants.PARAM_COUNTRY_CODE) String countryCode,
                                         @Field(Constants.PARAM_U_PHONE) String phone, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_FACEBOOK_VERIFY_OTP)
    Observable<SignUpResult> verifyFbOTP(@Field(Constants.PARAM_OTP_CODE) String otpCode,
                                       @Field(Constants.PARAM_COUNTRY_CODE) String countryCode,
                                       @Field(Constants.PARAM_U_PHONE) String phone, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_VERIFY_OTP)
    Observable<CommonResult> ResetPassword(@Field(Constants.PARAM_USER_ID) String userType, @Field(Constants.PARAM_OTP_CODE) String otpCode,
                                           @Field(Constants.PARAM_U_PASSWORD) String password, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_WRITEFEEDBACK_USER)
    Observable<CommonResult> writeFeedback(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_U_EMAIL) String emailId,
                                           @Field(Constants.PARAM_U_PHONE) String phone,
                                           @Field(Constants.PARAM_COUNTRY_CODE) String countryCode, @Field(Constants.PARAM_CONTENT) String content,
                                           @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_FORGOT_PASSWORD)
    Observable<ForgotPasswordResult> forgotPassword(@Field(Constants.PARAM_U_PHONE) String phone,
                                                    @Field(Constants.PARAM_COUNTRY_CODE) String countryCode, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_CHECKUPGRADE)
    Observable<CheckUpgradeResult> checkUpgrade(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId,
                                                @Field(Constants.PARAM_LAST_UPDATED_SOUND) String lastupdatedTime, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_GETMESSAGES)
    Observable<MessageResult> getMessagesUser(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId,
                                              @Field(Constants.PARAM_U_ID_TO) String userIdTo, @Field(Constants.PARAM_MESSAGE_ID) String messageId, @Field(Constants.PARAM_MESSAGE_CONDITION) String condition,
                                              @Field(Constants.PARAM_MESSAGE_OFFSET) String offset, @Field(Constants.PARAM_MESSAGE_LIMIT) String limit, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_GETGROUPMESSAGES)
    Observable<MessageResult> getMessagesGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId,
                                               @Field(Constants.PARAM_GROUP_ID) String userIdTo, @Field(Constants.PARAM_MESSAGE_ID) String messageId, @Field(Constants.PARAM_MESSAGE_CONDITION) String condition,
                                               @Field(Constants.PARAM_MESSAGE_OFFSET) String offset, @Field(Constants.PARAM_MESSAGE_LIMIT) String limit, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_GETBROADCASTMESSAGES)
    Observable<MessageResult> getMessagesBroadcast(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId,
                                                   @Field(Constants.PARAM_BROADCAST_ID) String userIdTo, @Field(Constants.PARAM_MESSAGE_ID) String messageId, @Field(Constants.PARAM_MESSAGE_CONDITION) String condition,
                                                   @Field(Constants.PARAM_MESSAGE_OFFSET) String offset, @Field(Constants.PARAM_MESSAGE_LIMIT) String limit, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_MUTE_FRIENDS)
    Observable<LoginResult> muteFriends(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId,
                                        @Field(Constants.PARAM_FRIEND_ID) String userIdTo, @Field(Constants.PARAM_MUTED) String muteStatus, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_MUTE_GROUP)
    Observable<LoginResult> muteGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId,
                                      @Field(Constants.PARAM_GROUP_ID) String userIdTo, @Field(Constants.PARAM_MUTED) String muteStatus, @FieldMap HashMap<String, String> defaultParams);

    @GET(Constants.SERVICE_PLIST)
    Observable<PlistResult> getPlistSounds(@Query(Constants.PARAM_LAST_UPDATED_SOUND) String lastupdatedSound,
                                           @Query(Constants.PARAM_LAST_UPDATED_CATEGORY) String category, @QueryMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_GROUP_DELETE)
    Observable<CommonResult> groupDelete(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_GROUP_ID) String groupId,
                                         @Field(Constants.PARAM_U_ID) String uId, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_BROADCAST_DELETE)
    Observable<CommonResult> broadcastDelete(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_BROADCAST_ID) String broadcastId,
                                             @Field(Constants.PARAM_U_ID) String uId, @FieldMap HashMap<String, String> defaultParams);
    @FormUrlEncoded
    @POST(Constants.SERVICE_USER_THREAD_DELETE)
    Observable<CommonResult> userThreadDelete(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID_TO) String broadcastId,
                                             @Field(Constants.PARAM_U_ID) String uId, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_LEAVE_GROUP)
    Observable<CommonResult> groupLeave(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId,
                                        @Field(Constants.PARAM_GROUP_ID) String groupId, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_LEAVE_GROUP)
    Observable<CommonResult> removePaticipantsFromGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_USER_ID) String user_id,
                                                        @Field(Constants.PARAM_GROUP_ID) String groupId, @Field(Constants.PARAM_USERNAME) String username, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_ADD_FRIEND_TO_GROUP)
    Observable<AddFriendResult> addPaticipantsToGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_USER_ID) String user_id,
                                                      @Field(Constants.PARAM_GROUP_ID) String groupId, @Field(Constants.PARAM_USERNAME) String username,
                                                      @Field(Constants.PARAM_PARTICIPANT_IDS) String participant_id, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_ADD_FRIEND_TO_BROADCAST)
    Observable<AddFriendResult> addPaticipantsToBroadcast(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_USER_ID) String user_id,
                                                          @Field(Constants.PARAM_BROADCAST_ID) String broadcastId, @Field(Constants.PARAM_USERNAME) String username,
                                                          @Field(Constants.PARAM_PARTICIPANT_IDS) String participant_id, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_CREATE_BROADCAST)
    Observable<AddFriendResult> createBroadcast(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_OWNER_ID) String ownerId,
                                                @Field(Constants.PARAM_BROADCAST_NAME) String broadcastName,
                                                @Field(Constants.PARAM_PARTICIPANT_IDS) String participant_id, @FieldMap HashMap<String, String> defaultParams);


    @GET(Constants.SERVICE_NEW_POPSOUNDS)
    Observable<ResponseBody> getTopSoundsCategory(@Query(Constants.PARAM_U_ID) String userId, @Query(Constants.PARAM_MESSAGE_LIMIT) String limit, @Query(Constants.PARAM_MESSAGE_LIMIT) String search);

    @GET("/{url}")
    Observable<ResponseBody> downloadFile(@Path(value = "url", encoded = false) String path);

    @GET
    Observable<PlistResult> getSounds(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Url String url, @Query("u_id") String u_id);

    @GET
    Observable<CheckUpgradeResult> checkForUpgradeDummyServers(@Url String url);


    @Multipart
    @POST(Constants.SERVICE_CREATE_GROUP)
    Observable<AddFriendResult> createGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @PartMap HashMap<String, RequestBody> createParam,
                                            @Part MultipartBody.Part file,
                                            @PartMap HashMap<String, RequestBody> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_CREATE_GROUP)
    Observable<AddFriendResult> createGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @FieldMap HashMap<String, String> createParam,
                                            @FieldMap HashMap<String, String> defaultParams);


    @Multipart
    @POST(Constants.SERVICE_UPDATE_GROUP)
    Observable<AddFriendResult> updateGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @PartMap HashMap<String, RequestBody> createParam,
                                            @Part MultipartBody.Part file,
                                            @PartMap HashMap<String, RequestBody> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_UPDATE_GROUP)
    Observable<AddFriendResult> updateGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @FieldMap HashMap<String, String> createParam,
                                            @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_GROUP_DELETE_CHATS)
    Observable<CommonResult> deleteGroupChats(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String user_id, @Field(Constants.PARAM_GROUP_ID) String group_id, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_BROADCAST_DELETE_CHATS)
    Observable<CommonResult> deleteBroadcastChats(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String user_id, @Field(Constants.PARAM_GROUP_ID) String group_id, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_FRIEND_DELETE_CHATS)
    Observable<CommonResult> deleteUserChats(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String user_id, @Field(Constants.PARAM_U_ID_TO) String friendId, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_USER_INVITE_FRIEND)
    Observable<CommonResult> inviteFriend(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String user_id, @FieldMap HashMap<String, String> defaultParams);



    @FormUrlEncoded
    @POST(Constants.SERVICE_UNAMECHANGE_BROADCAST)
    Observable<AddFriendResult> updateBroadcast(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String u_id, @Field(Constants.PARAM_BROADCAST_ID) String broadcastId,
                                                @Field(Constants.PARAM_BROADCAST_NAME) String broadcastName, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_MAKEFRIEND_GROUPADMIN)
    Observable<CommonResult> makeFriendGroupAdmin(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String uId,
                                                  @Field(Constants.PARAM_GROUP_ID) String groupId,
                                                  @Field(Constants.PARAM_ADMIN_STATUS) String adminStatus,
                                                  @Field(Constants.PARAM_USERNAME) String userName,
                                                  @Field(Constants.PARAM_USER_ID) String userId, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_LEAVE_GROUP)
    Observable<CommonResult> makeFriendToLeaveGroup(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String uId,
                                                    @Field(Constants.PARAM_GROUP_ID) String groupId,
                                                    @Field(Constants.PARAM_USERNAME) String userName,
                                                    @Field(Constants.PARAM_USER_ID) String userId, @FieldMap HashMap<String, String> defaultParams);

    @FormUrlEncoded
    @POST(Constants.SERVICE_LEAVE_BROADCAST)
    Observable<CommonResult> makeFriendToLeaveBroadcast(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Field(Constants.PARAM_U_ID) String uId,
                                                        @Field(Constants.PARAM_BROADCAST_ID) String broadcastId,
                                                        @Field(Constants.PARAM_USERNAME) String userName,
                                                        @Field(Constants.PARAM_USER_ID) String userId, @FieldMap HashMap<String, String> defaultParams);


    @GET(Constants.SERVICE_GET_USER_FAV_SOUNDS)
    Observable<GetFavSoundResult> getFavSounds(@Header(Constants.PARAM_AUTHORIZATION) String authtoken, @Query(Constants.PARAM_U_ID) String userId, @Query(Constants.PARAM_MESSAGE_LIMIT) String limit);


    @FormUrlEncoded
    @POST(Constants.SERVICE_TINGTONG_DAILY_UPDATES)
    Observable<CommonResult> requestTingTongDailyUpdateChange(@Field(Constants.PARAM_U_ID) String uId,
                                                              @Field(Constants.PARAM_SETTING_STATUS) String settingsStatus, @FieldMap HashMap<String, String> defaultParams);


    @FormUrlEncoded
    @POST(Constants.SERVICE_SHAREFILE)
    Observable<CommonResult> requestShareSoundChange(@Field(Constants.PARAM_U_ID) String uId,
                                                              @Field(Constants.PARAM_FILE_STATUS) String settingsStatus, @FieldMap HashMap<String, String> defaultParams);



    @FormUrlEncoded
    @POST(Constants.SERVICE_CREATE_VIDEO_API)
    Observable<GetVideoUrlResult> getVideoUrl(@Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_SOUND_ID) String soundId, @Field(Constants.PARAM_SOUND_IMAGE) String soundImage, @Field(Constants.PARAM_SOUND_FILE) String soundFile, @Field(Constants.PARAM_video_type) String videoType);

    @FormUrlEncoded
    @POST(Constants.SERVICE_CREATE_VIDEO_API)
    Observable<GetVideoUrlResult> getMessageVideoUrl(@Field(Constants.PARAM_U_ID) String userId, @Field(Constants.PARAM_MESSAGE_ID) String messageId, @Field(Constants.PARAM_SOUND_IMAGE) String soundImage, @Field(Constants.PARAM_SOUND_FILE) String soundFile, @Field(Constants.PARAM_video_type) String videoType);

}
