Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7C110F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 01:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647308185;
	h=To:Subject:From:Message-Id:Date;
	bh=3akfd3suTA7fL8tiCUCyHJGmBLX9OYpJAdVyZ3lut4s=;
	b=Tz3DKsHFi/0EfDYny0YGpAvfoIKYRbVPSG6G1cEU9FuuOCXKPsrtz0C05cRRDpED
	qxfxg/psKEEVaEu0OVCKhmA3etpBTLf1KkRI/+Yetd/IrOvAhIO7b326dBnRezjkuJd
	WZZs59s/sgPNeeAhouSoZKHZmuwv48wIQT5VMQ+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647308185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3akfd3suTA7fL8tiCUCyHJGmBLX9OYpJAdVyZ3lut4s=;
	b=eG8/W1wvicl1xnmvLbRmVM360ldlFAbkykI+HZQ3jFi0L8X9DxGHcfvOPY7MjCrO
	1iUqXPm0PrNIvf8YLGRQHDUkwg6h0Djf/cdPB5Ttg00XOPvNFKBezEHLDJ86l8vNT1f
	YZ6CWoqj/4kBiwDeaszNW5xuhbW/cGMi7eY9A55U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b381d34-205ede80-2473-4a44-b00c-339b2a5bba6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0ed4e14356ccf4db04c6f266c6dd312d68bd6173d4c52da3ff5f6cfff654108
Date: Tue, 15 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647308184
