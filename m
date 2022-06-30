Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DDE6D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656605212;
	h=To:Subject:From:Message-Id:Date;
	bh=GiXN2SkZv9re2Rc4XhBtJk9+s0khj0tQz5TTLlH5AvY=;
	b=PVftp2GuF78u5Kbayz1BBbnfgiMpnqjRsTEZRr9p4MIXWQTy0R3vYPm8lvSIZDSD
	vPUUFg5/5XlVbcN4Jhz0p8ETViOF2YwYgDvmW+2YCC1gCuR6liKPt/usbMpIY+Wuet7
	XlVK61dWVx3SUmvtjxJIml3UHLjXPBka7eWeD6WE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656605212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GiXN2SkZv9re2Rc4XhBtJk9+s0khj0tQz5TTLlH5AvY=;
	b=hYXtDGbZp8IM0eePrysWAt+rGCSNclgQVz3wObLKfZcU2onjcMUlyw44f2AgxjK9
	SL1h/NeXLTKY5ewyIcuTWFMKtQFwMC+C0c1JroqMvtOINDqEdMcyoMNgBf2EUZCN4y/
	IaELyKEftSvsQ233duj0q8WExV9c4GpIziSLzqMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b55d7e6a-bfe5408a-3db4-4a7f-9e48-cd140faa3985-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 544a8e0d5ea4ea18e35173c2d468a36451b643f670e7061f133798ea8926bbf7
Date: Thu, 30 Jun 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656605212
