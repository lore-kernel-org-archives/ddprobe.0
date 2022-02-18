Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A588148A4
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645208785;
	h=To:Subject:From:Message-Id:Date;
	bh=1RKaY+tnnjNfNNbyiTjTkJG014yChejQ8jn2t17GYyQ=;
	b=QLeYric+CGryTpTlTFml7HjUOuS3Kj5y0Hg+lQMgEGZ/x6jvCt2r8u79PEBdBehf
	EEJC0ml0ZmRw8rVfLUCBuuQOaATrBvzqJG+QCVYXMm1WwFYlb7eiymeH211lr7JPdhJ
	iJXrGJGK0EmP+wIzThBpCIxP8JOwbUE6amkJbSRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645208785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1RKaY+tnnjNfNNbyiTjTkJG014yChejQ8jn2t17GYyQ=;
	b=V7mTI17/W6IYm4l4uyJluzy1xPjGl2uXFJmfvA1qZq7Wvjw+xCTs+d0B004byFGX
	HP/LoNayg4klAQvyYLIer8y8KhXOehwnpGeTNWSfh3C6GGGDH4ZOCN90ECmb9ZzJhO+
	O3a+EUKeYjVeBQpXPXLdPQSWgD8K1BW1GfapXX9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e15cfbc-531618eb-fed7-4618-b01f-c0f7a0e62cb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 158af668bad91213cf17dada83a4d5747bcb562bf6a89500faa46a94b736cd5c
Date: Fri, 18 Feb 2022 18:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645208784
