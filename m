Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E2D7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646904684;
	h=To:Subject:From:Message-Id:Date;
	bh=FMyAPbkmVuDE763H8T9792MYnVOO/Dfj5lZ/RHdjJTE=;
	b=UfLhy4ahfBbSXPe7atND0dvXu3grNb0WDuUYtVwsPoj9wvOsTwQSlzoFxjpmq4CJ
	LXkuZharl1LNs62yHygOV/mnXKbmNkH7P3/WzXQsMcxqiJhRQzS6jU4Z2Bgjw/NvJhK
	BPyFlgFlh2uFhUS5KpOKmZDrw3pBxB6hiIbKcVFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646904684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FMyAPbkmVuDE763H8T9792MYnVOO/Dfj5lZ/RHdjJTE=;
	b=XlQiuD+Urrie1JMYRCnNT11LKMv2/bpJOpc02emMIZpEDscUjtnqxehalz3/K8Uu
	dNBpSplDHpJBxmSxT+KBBYmeRuxj8u9PLEivSKha0Jsv1rWGYp9ULJcZHom1qokGgrF
	UI/J97zF0gm3NZjNfUF68DPv+TxCIemJm0F4qV/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f732b30d1-3b08052d-82f4-41e4-98d7-ce33e2d458b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86a77a83744ec164b4e035f40da2785cfab3ad4f5ed2a6763c142279b6c2a6ff
Date: Thu, 10 Mar 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646904684
