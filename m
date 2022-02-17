Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A397D38E2
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645059084;
	h=To:Subject:From:Message-Id:Date;
	bh=ohOEu27XpYO/X/L0BAE6yoKSD/KPrVJRunN0hMDMyg4=;
	b=ZxErwYFb5vGZPzAfcBGH0M5R4RWaN9A4IVfTshloubjuYzAtkAe0iC8jPjFYZvcj
	p4vAEQGkO4C6O87WnT0EP5ZZ6a52Q4Lw7mG4oalubiCoRG6GxpaNSe07PWpKyxcr3cr
	SokAJ5ypwaZFvcPQwDSx4p+4NZMbnVmthiap0y7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645059084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ohOEu27XpYO/X/L0BAE6yoKSD/KPrVJRunN0hMDMyg4=;
	b=QdSoViANo4BdnbTuRmlljIzM7JvHdo2XrxfTr3GzXz9+78DpWQGb+qQyZ8BFHsZa
	eysapQuJuqpjG6SJzRmb9NwwQfKA1v1IMgjgW/hmGV7LXCqRjk7m9nu/8KaxSZLKjsJ
	aKCquiKW0oDa+i3hUHrbdxJZHOdysEJgryQrlV2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0529920f-32773978-c1d2-4d07-9a9d-ef8539c68219-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08e68f702a34fd5a31fd7fc11ce0c4932ee84c1aff7ec19d818eaf933f1e1e49
Date: Thu, 17 Feb 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645059084
