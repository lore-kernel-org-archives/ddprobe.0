Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEE915A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 06:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653027059;
	h=To:Subject:From:Message-Id:Date;
	bh=aHVbUW731E1APuqE0x8CoMpbGk6N7SsE6PZb87pVjr8=;
	b=PYm1alvB/RPYrl1PsD8m47Jvjg7lnY52mIT555MAgpjd9jYchNAg2u0EyL5TjD53
	NaOI24jsQa1nMVM5jc0baf/yXyc2gj34qxG1sdegvBOYo+JN6vn38moz8myiAA2S6Fe
	d0Z+ZvRY2u787uPHtuuEEQvicZlvyZSN50lLE3Hc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653027059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aHVbUW731E1APuqE0x8CoMpbGk6N7SsE6PZb87pVjr8=;
	b=Suupzsu1mPtz4ZEv0xSuvEBQt0spDSN1OnnbN2FeYgO9Z4L7YarwEcavEJSvRe46
	ftS2vidvQk/JTt/DhPVl+5V/xVNbqYdqGSXWw3ZaEnneAEOcrgksKTAqqjUP8M5IUyZ
	npNaVYYQGYzBuXBAHxespsYtEXhXxsKWddjAdHvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0173637-a24157d0-1fcd-424a-b332-809a8b636f17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 555e3c37a94625941a78c9f27cbbea6f362b7bed893899d7aad9bc9ff17a91d0
Date: Fri, 20 May 2022 06:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653027059
