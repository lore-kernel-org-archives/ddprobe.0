Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1909E1FAD
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646562385;
	h=To:Subject:From:Message-Id:Date;
	bh=w1Q9Bp9OtHQV2OMLx5pZ1dWRcTh/JMHdY72Kg+Ie374=;
	b=g1DhIXNphIHyfUFyUmNhDNUrWdYQCO0KkCMGy/gm370FyHvMutkJ7lKzgmAAY0FG
	rxjEE9HMC/yW7h78nEhxySu3uqneL53UORBt/HloK2IKvPHKmx//uyuQDBHlj1F3JYI
	MTFPwoFSi423urAxUKvAY4g/8o1CLx6OI0YxPbIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646562385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w1Q9Bp9OtHQV2OMLx5pZ1dWRcTh/JMHdY72Kg+Ie374=;
	b=REv46L5QyEkUuRPVhuNhHRdu+9yVRarcrFgPa35BvJys4tAeaQTBpIdexin4RQV8
	Gc97sVOa/Xov0QuUIByqOSsHWpnAhx0BcMq9BjHnTlA8Eg5RV3NUl6PYF+ogThiG6TG
	PXS5LT5pDQ5XWI1UVPTw5SW57JLw0VSv0HIbqlsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ec41b96-f8db72e1-9cbc-40d6-b603-85ab61c96c91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67be66d6c3b711bb4c3f9ee0ebf8c22dc5c95610de5a3ec0c849097a408345ba
Date: Sun, 6 Mar 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646562384
