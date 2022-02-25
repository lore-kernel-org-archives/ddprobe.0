Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780E623D9
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645810885;
	h=To:Subject:From:Message-Id:Date;
	bh=A0tfJfo2OVP9eg5eYVSnR1Z7ZylJ7wLgi97wmDprMls=;
	b=WMXdBxMehoBMZDHM8/h0O17GSAsnA6zqn+pfV1L/ATkWF4hmtByFp8BiMe73Mlu1
	lEO5Y4YooN0lVOIQy+ZZ5CkdrFtH1apJWO6Zl2k9885qyR3Ac/PnUyEiYWvoVWf2MMV
	tOGucCGyR3ubzTtxKW6ua3x1MiNXuTxrGk6B9DeA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645810885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A0tfJfo2OVP9eg5eYVSnR1Z7ZylJ7wLgi97wmDprMls=;
	b=EbhI6FULhzHccYp9sz2cgOsFwOiVzBVRilHS6M8jSME0mu36AzkdKbmgODu53Fqc
	TzP+RiB0kzQ9xNJumZj5ez99QaNpsBRXjtLGjx4nYNl+yDbJyLTt3DTzQjfS3O1Xx0J
	Xg0pdDKe9M5SGGb/HhC8PDo+BoXWhtw5MRf/p7T4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31f9209e-4c43fd15-7bda-4cdd-8037-1f17e62db0e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1148f004949dc8dc297df6ec666197676bda2be879c3890e3f7f12fe7c8d40b4
Date: Fri, 25 Feb 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645810884
