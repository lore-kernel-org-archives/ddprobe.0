Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795EB7A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646302885;
	h=To:Subject:From:Message-Id:Date;
	bh=rDfP4VvudPwYCAHGSzvvV98Ss2p5supwlDttPV5tvR8=;
	b=jFXNnFmOL2FbsW4m5CPKRyqrSOh/7uyzCCnqVvILVNre1B2MOUO3nnJ8yU3B8peG
	/3B0LENS7/VXZRFpEh61/Ak1c/N+OIDlYXnDZizA0ZqQOdSxD9zllC7KZkKgQNag87z
	y4gysLOOsNmx4w22VVmdFDTJeiGFPXKgToo4KoVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646302885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rDfP4VvudPwYCAHGSzvvV98Ss2p5supwlDttPV5tvR8=;
	b=h+qKSHNQd0cVDluGzBSV8aBndqebLPIeXbbRtrlY1rSVWEjNEPY5F9cf2+CR6VKr
	5rRUKtqZbK6Qa3hOSOFb08SsWBo3h4f+IzKDzfnpqHi8ZybUM/LKQnbYM+aELZH/Fj9
	F/iZXsJq3N5LNp5WKVbRtN+tHs43f5U6ipqF0BWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4f4c73bb-fbd00145-d019-4117-968e-04cf8a7a2c63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43ff6bf56b428f2e5a80b9da5d5a3ae89e36d5adaefc0a35e72f3bbee8ca7085
Date: Thu, 3 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646302884
