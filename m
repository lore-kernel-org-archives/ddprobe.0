Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9BC369D
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645048285;
	h=To:Subject:From:Message-Id:Date;
	bh=bM3DcMbOdce0ZHgG2Hfq/BnPOlOE1A5jTH8PV9pEbYs=;
	b=EUvt+I98xqgcJWYzTIhJBS3EULDoszG2rGt0Wezt4zk+y5jWll0dIES/PuHDMizr
	5R2wxfstIn+OSDhqulsX0VoQqxF5DYFzWDLp0YjdjO7KyWoLk70jqItW0OJLfd4xvwQ
	Tinl8j0FyYmEVNDTmZ+ipi4Z9t9DPzz1+RpUMJ40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645048285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bM3DcMbOdce0ZHgG2Hfq/BnPOlOE1A5jTH8PV9pEbYs=;
	b=UA5sr/+swCYof1KQ56yZKR43uOaIx9wQB8+WxOueNokO4B449idUHwPRN9rm50Sp
	5XKXBVwt3NhAr4QNygwZxZkFxwnmyxGCIC/nWME0A+AZVIu7LfbRnf2oPLUNjnQZCJj
	mZhTLLwWbUpGBJWl07bw77NQGq/xSharapfCkQ60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0484c68c-cea516b7-9470-4d4d-ba1a-7b7c064aace5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 140490a403ea7a1359da873dabbd3f69cc34387f2224ecd3e1859fbed1e6cc2b
Date: Wed, 16 Feb 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645048284
