Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3227A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 15:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646233285;
	h=To:Subject:From:Message-Id:Date;
	bh=uupUKJdaJlrIC1E209mre4MzOmEgcaif+zJsoQQnj6I=;
	b=cE9TVwBFKg4k5OmcToqvv+N2K6Qt7MEr/upplgX1xeropj7oBbH5c6k5UyXxzz92
	waIjQF52LnRthPp2vn/DWNUvl4ySsy7toqq3XZz35Y0ePKhtK9/sQHjwAnPFlyQsRzc
	QwftThYRVmte2wtHdX6sz8XzrZH5sm0YF/JSLl+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646233285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uupUKJdaJlrIC1E209mre4MzOmEgcaif+zJsoQQnj6I=;
	b=RmXTaeYKmpZ0tdOvWymTcWMxhNyk6UYlm2Cckf1dZ4ZvwS0/otLaR2eAK4U6AW1O
	ySo49hxlEwamAgrhpb0AMun7BwGxQ3sry2a/4oK3DLWeLT1wZL7gRAtRTXiKbauVx0g
	/CUzh26LcjXJB53uv4cbtXHgUb8QBTWdXNc1aUII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b267095-99b6dd5a-4732-4d68-8ef4-4cc8c202ade7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b28be90e81205691e738cc3a6787a808716616185af18b0cc2c1623c6ff9268b
Date: Wed, 2 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646233284
