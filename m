Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362C94C88
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 21:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646776285;
	h=To:Subject:From:Message-Id:Date;
	bh=O0MZP5lYDC7c5FsI79tm61pZcbn1UsRfYL+3GCXxqCE=;
	b=Kis0GH56XlqnoRxsKR9sti1Wr9LsDVZu3YfLLluZSGAI6pMUlJCFjET4iAGpp2Ja
	PS06WYOeanPhX+V+imtvDmkM5SMCx8Mtf+BFLQihfd7c6ZLKvb2PCiE+6EenSOsZNcs
	c5Tw7N/RJwQz281wGKynN6XZuOLUeT2vTA0alPcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646776285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O0MZP5lYDC7c5FsI79tm61pZcbn1UsRfYL+3GCXxqCE=;
	b=N7iiOPOcic/Ugb30Xfpc/bRJJWg7/HKtP18Xq/U/sqWJLxfNytwWuohZOrmTllpY
	f1xygZ7I/VtlPFHqzQkK8PPWJ5HCOGRpGssdksdhi7mk0o+sF93JhhvS6x+GAsL7PA1
	GBjHkMsTvCWq/Vf9ACTjh1Fr+wBgPTBI/e9EiAXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b83f684-d546fd1f-c786-44ab-ad6f-1959266eaf8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a4ef70d46339c910ddb07ffdaf96a8665108b62cc9b1fc5e54cab6841b0e26c
Date: Tue, 8 Mar 2022 21:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646776284
