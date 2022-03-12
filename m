Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0EDD36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647050784;
	h=To:Subject:From:Message-Id:Date;
	bh=pg6+KSswag0npRm5ro4pZi3BdgWkZshEhBgvDGJ+0lY=;
	b=cCqIV0FQzthV3jzlQaIUFqFoWxCWk6/4l+bD3J2pXuOfROy2SWeBtFWrr7v1lnrT
	vtKo6xJi9WVsC/VrZlEmXuSUj0FEsaAzRmFt8jRXDPqFrBbL/xujLyAGkoETcxaxgAd
	Wr9bF9jTaiiVI1p8pYe7HMl6adoimRJB2pXE95sY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647050784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pg6+KSswag0npRm5ro4pZi3BdgWkZshEhBgvDGJ+0lY=;
	b=GEiv1ZaDBO0EGkCwHxNYfrWzAS17WniT7sZCZO2BYD+SbGm4xgCaBqPxS93XJCCA
	h3OTWc7WDg1dnmnugUHu/oNDyRUs+TlSgblilDuo2Lf8mYD0mcED7b+OXFuuJCoohqK
	QUHzACrI9Tw7SyBzdpsYV1NwgFal/gY6u/zYGb4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7be0800f-6cb2aec7-6ac3-40f7-af69-94b37a820b74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f4973a8f4c0452119084ccdfe0b48c0cec84b18e8af86d63ccc005bc67cb920
Date: Sat, 12 Mar 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647050784
