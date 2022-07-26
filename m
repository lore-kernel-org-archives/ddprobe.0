Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69892538E
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658859052;
	h=To:Subject:From:Message-Id:Date;
	bh=P7gp41wyfuaMEalXIZZYS33btrwl86w5TTPMNWUNDT0=;
	b=Z+syy6E5Hkv7DCz8plM+U+tuNKVBIphLO9D1Y5bm1kyGnLdZcivEEZxUPBJPNaPI
	LT2nH0mo/Ji8x17zHOUqBEXLWTd4Od4uBykTWFgaAwxi0XOAYyM+iDbkQudsIHXzgY8
	QeHrH/9GLRzGz4x/MC6P9LadhRqKmVJHmqeQ+C4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658859052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P7gp41wyfuaMEalXIZZYS33btrwl86w5TTPMNWUNDT0=;
	b=gHjfQUr2HI67RgwWJTiwkHmaDshKOSHPPEimIbI+xMRgdVvk9XCNNL+LWFfTbBt3
	LrYWGAMF03PV6nUnrO+/mIaERZUH6d9nGZzPbhZcq+o2bPsBbFWHHM/PPaHjt3WW9Ed
	WxfvW2BpRGN4ut/P2tF1WPWmkaZxlMJNpnnQ5l20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823bb45df4-d2bbb91a-1219-4fe6-ab6f-2ed0dc19825b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7761f09d53e5371f25668591c97ce85f38e4b8de467985467405a47b3a5c398c
Date: Tue, 26 Jul 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658859052
