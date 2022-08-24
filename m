Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ED47E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661352052;
	h=To:Subject:From:Message-Id:Date;
	bh=elB/Dvm/rRj+Il83W83cKuqzFgaFoIrx0RHO5X+udIc=;
	b=V0oTWYWaByO2asVYxDc9NgJoW921XBwUUzLtXuc0QQp5bKpVNxO+JjoQyvQhyCmK
	8XKE3LXW7uzy+Q1cWlBDEUh+9zqL/en33xF04f4F91TSjE5AZh67NBf+mr3TtIkf9I9
	d5HZ3i/NAc7DIXyAOz3KRo7LxMSWe6+s7t6fs3w4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661352052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=elB/Dvm/rRj+Il83W83cKuqzFgaFoIrx0RHO5X+udIc=;
	b=eiLiBxf8HAvv9/dPQZUl1KaUGF1wqZpsAAzw+Mw/fTTH0gECOm5qjxShJEjxNKY8
	CWRgWBIEjQo/nPzHVB9M/IFZ4p/0+3iJGucBZqH3yZ3CrvrIiGIuBKVlM/LBTWk2VQX
	L3ltv6UmhYHBGlTK622UuLf72+9LeEWvIKhZciwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d04c878b-5339dca4-9a3b-42a9-890a-803a4597bf91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4e83c092f51095de160645b733acb2932237d39aa8b0c873d42446c610cf73c
Date: Wed, 24 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661352052
