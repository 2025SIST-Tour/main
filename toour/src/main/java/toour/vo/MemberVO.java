package toour.vo;

public class MemberVO {
    private  String   member_name, member_nickname, member_password,
            member_email, member_created_at, member_updated_at,
            member_last_login_at, member_status, member_type, member_salt,
            member_id, member_warning;
    // 이름, 별명, 비밀번호, 이메일, 생성일, 변경일?, 마지막 로그인 날짜, 탈퇴여부, 사용자/관리자, salt


    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }

    public String getMember_warning() {
        return member_warning;
    }

    public void setMember_warning(String member_warning) {
        this.member_warning = member_warning;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_nickname() {
        return member_nickname;
    }

    public void setMember_nickname(String member_nickname) {
        this.member_nickname = member_nickname;
    }

    public String getMember_password() {
        return member_password;
    }

    public void setMember_password(String member_password) {
        this.member_password = member_password;
    }

    public String getMember_email() {
        return member_email;
    }

    public void setMember_email(String member_email) {
        this.member_email = member_email;
    }

    public String getMember_created_at() {
        return member_created_at;
    }

    public void setMember_created_at(String member_created_at) {
        this.member_created_at = member_created_at;
    }

    public String getMember_updated_at() {
        return member_updated_at;
    }

    public void setMember_updated_at(String member_updated_at) {
        this.member_updated_at = member_updated_at;
    }

    public String getMember_last_login_at() {
        return member_last_login_at;
    }

    public void setMember_last_login_at(String member_last_login_at) {
        this.member_last_login_at = member_last_login_at;
    }

    public String getMember_status() {
        return member_status;
    }

    public void setMember_status(String member_status) {
        this.member_status = member_status;
    }

    public String getMember_type() {
        return member_type;
    }

    public void setMember_type(String member_type) {
        this.member_type = member_type;
    }

    public String getMember_salt() {
        return member_salt;
    }

    public void setMember_salt(String member_salt) {
        this.member_salt = member_salt;
    }
}
