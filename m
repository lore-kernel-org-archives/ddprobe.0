Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D4133E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647015085;
	h=To:Subject:From:Message-Id:Date;
	bh=LZpdHEnyk1dRd8soFe/ywr50jFjxEVzujKyXzTdJsqQ=;
	b=f4DUBavOYeNx2LDXD1nKI9pBEKBFVAwYcbkqUw3B7Q8i5AvT3R0CcmYvxds9jWHx
	ChFRP7qa8fQev6FDu7/xpWA8KvEk8KicLGqJIP9zb032mfoadTYkEMr9bAxgcvIBMPY
	x4TGZbvLIG9JD8KvWyznLhrmwGCj9UWnFUuUikhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647015085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LZpdHEnyk1dRd8soFe/ywr50jFjxEVzujKyXzTdJsqQ=;
	b=Ec5aYSxEeYVqLGBXYhNRTytQ7B0DbZLJ3EHdBQ2BLGh6Q3bpFkQ45cm38o0DgMlQ
	gIePIbc4T/abnE0ojGTj/MasfOBMm0uM1ORGBK72Tkwp2320J/XIdWIoyCnpssKi/9l
	QRsJ2UvoelHu7pCfh1w2n9bfgha6USRx/Wu32bN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79bfc309-17779714-0124-4044-a714-8a31c5b10021-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b31a863ec2881ab053d24d45d3dfcd69c2ed9464f011d9e114c4d2a5e25a4f6
Date: Fri, 11 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647015084
