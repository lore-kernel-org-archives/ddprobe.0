Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A829A36B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646338884;
	h=To:Subject:From:Message-Id:Date;
	bh=LpedwaRN+PckQGce8UmmnbLUMWoA1cfBsjcahWMiXWk=;
	b=DkRuizVN75zc9fJnJqLX4WVxmt02GVKj52wz79mkOWItslcQuQM4B8KKhJ4B2v18
	eufvGP8qBn3lx+KZ4yt8GT4JUHGKLxuI1AmL1fOffJbV+MUQns77Zb/jxJSynlxDfLd
	5Hm4cuKTPKkj4CEm2SHLAVASlfmR+g20DXr17QNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646338884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LpedwaRN+PckQGce8UmmnbLUMWoA1cfBsjcahWMiXWk=;
	b=HEjwzGIMuWYFMrjCCF84PUiNLcubV6mL7pSXcqm/nDqZl9sWuC9eevyl1H8WSIzT
	4n8VgZ4+TZUYEKkrreJnYVhzFWcTPsfv/IH1WbDH1JjRyf2ReDJKWUn3LYC+NHVzT7g
	baqc7CNX7oBG5Mp3TgR0uxfZHBYbou/RlWVkM7Lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5171c47f-714c0525-0959-465a-b8c4-d7f19024d9ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f15cfa77e1745d6ba95e289723b71ff101aba8f9cf378190a58a60305a0e6d5
Date: Thu, 3 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646338884
