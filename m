Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A34C7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645485985;
	h=To:Subject:From:Message-Id:Date;
	bh=ObbfsSFftyYGhDtgs74a5tJYXchZbMFZKZ8t9KUVmnE=;
	b=IjMZxmJvJKTEDxvzsE/P8lzs1Lb+Lv9/5ldr4t05Y4+mJ6wmNokGt6jPTS8n+Ps1
	flZfGek20L1rU3Ou4BniuuFg0nz8GgSUCRmSrgJfwhOh4aa4j4n4MsG2H3HTH4fFItL
	UaCasPbELyHAk0GwbmT8DLz/1IAzxvg42wYa4pL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645485985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ObbfsSFftyYGhDtgs74a5tJYXchZbMFZKZ8t9KUVmnE=;
	b=lXouVE3AXE1BV+Gu8iSCx0j4zwlxLo90aEigglFhcfykJ1FsvDS8tVI/g5eEudAZ
	Fu1D2KXCYKME1wB53EapAN5ltPlbWipmq8Cd8UppIxhnQUmqBX85yd8+oSv2QLT4bh8
	vHqLrEFr0dnuX6Q4WNvn0iTHOQ3KCn2VU7YTIBqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e9b8bf4-8216d708-4c4a-4feb-b1ba-e8f006fae4c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3517507f08e06046b3ed7aad58fb6fdc551c4582a6af69dfd6521a98381dfaa9
Date: Mon, 21 Feb 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645485984
