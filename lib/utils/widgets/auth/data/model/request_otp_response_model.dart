class RequestOtpResponseModel {
  int? status;
  String? message;
  String? otp;
  Errors? errors;

  RequestOtpResponseModel({this.status, this.message, this.otp, this.errors});

  RequestOtpResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    otp = json['otp'];
    errors =
    json['errors'] != null ? new Errors.fromJson(json['errors']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['otp'] = otp;
    if (errors != null) {
      data['errors'] = errors!.toJson();
    }
    return data;
  }
}

class Errors {
  List<String>? contactNo;

  Errors({this.contactNo});

  Errors.fromJson(Map<String, dynamic> json) {
    contactNo = json['contact_no'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['contact_no'] = contactNo;
    return data;
  }
}