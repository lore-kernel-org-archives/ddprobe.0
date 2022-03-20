Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DDE33F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647789385;
	h=To:Subject:From:Message-Id:Date;
	bh=9dSYdGxBVRaASCmpYFr/YstloJS+NmQNIk3N+alaqA0=;
	b=Gvtr1jzw5/OwJkkhHUtKvLLdQ8RVRxZxyrUdTxWhfdbpHIpv5L4oohfI2sYzlAHD
	j2EdU7t3ZUs+OjbcqzDLpbm0NsNQlvA18L3UIvBUQaLSlC2oHCVC78nPD2+HeTZH2RS
	mDp/xdXwQfQS8Z8onNFBnQlC29lvJDR74fjiVB+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647789385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9dSYdGxBVRaASCmpYFr/YstloJS+NmQNIk3N+alaqA0=;
	b=In0q+EIAxHQoeOrDyPROE7omYOX4EOOqvOBydRFYuHTUbrlgRsrjMJ2+ll3ltq+A
	NlcCPGhLgh5U37kAGYubl/Q2xYk1Z4+a6w8Z6n+p+XxwjU6UAAbiCPyVKy/KmvMYYpK
	9lrLxiyHHN+DQbSxFEnuwGTQg4S00VYUGktitAps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7e6a41d-42991b53-19b6-4f52-be2c-d1ccb48035a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dddbc5d0908a4b9eef6bf475f44b6175bfd40bfec3c3fc9e9f3c7b1044f8adb7
Date: Sun, 20 Mar 2022 15:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647789384
