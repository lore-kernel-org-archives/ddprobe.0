Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD96800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645596984;
	h=To:Subject:From:Message-Id:Date;
	bh=HnohZToaX7snNGRE950k2jzq4ZIz2KXpb3vlhjOZMIE=;
	b=QKp1lY8KzdLjzx1hvMUf4ZD5AzpbySBQxZvsrSp559te8CBYTMKyWUBu28DDRCgX
	scy6Oq2/uNxEU1q1oTrVBF6EXOe65d/G44E9/zU0txeGdaRxKhDD5LRKI3D4+/SRwb0
	8gCH7zlFoCBxlvt5v0S66kmMvUNGhYk/NKGCrw5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645596984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HnohZToaX7snNGRE950k2jzq4ZIz2KXpb3vlhjOZMIE=;
	b=N0EbVjN4WuN1rL8KM5ys0Y8gL0dubs5o5e+FL0M8HZiPCqdoaAKROaW6olLpjoQL
	JoIFxH5VDofa4IeC5mtEgfEMfa9Tzant/wdlBbx3fxBf+gBBqL/TGuV6YT3sYZMXeuk
	zIInCwPOt1tq3AzBGMcxG5gINqOUG6vJ2ClPpKE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f253945f6-4b5f8392-14db-4239-88fd-706a4e46fc75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7e00e4db28bd2753a4d8aabd405e41b39accc849aceaac45b20fdd6ce94f746
Date: Wed, 23 Feb 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645596984
