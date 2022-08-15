Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE945386
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660602052;
	h=To:Subject:From:Message-Id:Date;
	bh=2iHt+/LvOL17rys9s2Uot9fq99WM8YlVXzZ7Ok9kg8U=;
	b=dXpTTgsr0kx/rP85bFPNEjVmhY6Y9yJu3lqYRro3sk13inmQ473VZcmt5+wZQTQC
	BhZSKmWLP/DvbwRCRKNMaaOGJ0kbFRvoaeggVX5DtvISAmHs5t/ozQ36baw9I5YOamp
	5cHwBXn+x0VWdqagh4cJdI3TjzNXuBOTkgGB7DPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660602052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2iHt+/LvOL17rys9s2Uot9fq99WM8YlVXzZ7Ok9kg8U=;
	b=g0I0qUecI+GXg1x+4sh0FjLp6Qn0PbYbiL4TO/bLrHWqt6WJ+IJ0pWJ3ZVSzLY7N
	ztieOMslGvnYfQijxMZdjAtxitOTb1msJs1Q4Hk5ChRj9IUoKPt/hQRPi7y2LV2Du8Y
	O7B117pMbKTvX9YZYmdMwsGiMLkVgS0p/3u6Vdcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a3986fb5-f3b0e1e7-3ee0-475a-af56-a54e5f9a18fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fccd9fee2c152471bc23bbbdf6c51f6d9cfe1e4a01d085e03ea52dbba787ec73
Date: Mon, 15 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660602052
