Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89434365
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 02:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644806415;
	h=To:Subject:From:Message-Id:Date;
	bh=P4W7GbgbOd97ceUA2mXHhjnpEZtZgRVJKFZi1LQhX3Q=;
	b=YKaefR7z7jBpGaY27NGmtADAyYWJM20j1NX3adPvUifEnk8kMqLW5Wy0MVvMXaXb
	OSvj4Kqi06gY83NTIAnN6cF2DFHcTwTfSV1CyWPu3nQbvtKF7c6Fu+zYTwiCJW9IVbj
	qqczY+x1skm07Y5oGgedeBomkIHlms6Hi2sKLRVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644806415;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P4W7GbgbOd97ceUA2mXHhjnpEZtZgRVJKFZi1LQhX3Q=;
	b=lrh64WcB+okI9mVPwQ7GROyX/GmKiuOzf1e1p/fww4je4ZNmTNVdUlMGdUl8jpJH
	9tf73s2ETsQn818y2rNzVNSqPH2NRxsaRfGDGLEZmne+2gG0RUCs3pvv9Wega7I2Fqh
	ivILPZzidNZDKTE36psMuvCzDK7Ht/+tRl1wO3ws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef61a2537-94369bb6-8d6e-4570-8e98-f4c3b06da616-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf9240665b7bb57756fd86a8f5077d0317f71c2856e382185971189256c09184
Date: Mon, 14 Feb 2022 02:40:15 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644806415
