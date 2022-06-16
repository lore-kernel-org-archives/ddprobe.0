Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC837A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 05:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655358599;
	h=To:Subject:From:Message-Id:Date;
	bh=vlFDfc1k1jQ+rgEN9ybRyN5eAt/CdjzExM4lNZu0vCg=;
	b=LWMB3RCe4DCt1BnuKrWxC/D/ZiRK4SPTh5HGIooge0ZQXuCi/GvOCKu/g6aGAu4u
	E59OfNCN2rk1wWDpMbdCvrdFQTKqjppzqDSnXLoLE624NOcuQ3gnElsx+KSI5ic5unz
	odZYziJPGn2sBanIA0OF8z7+AOwWRylteHxLDABI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655358599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vlFDfc1k1jQ+rgEN9ybRyN5eAt/CdjzExM4lNZu0vCg=;
	b=DJUGSRjVv0hBwV4fSYl1S2h32vGj4HfkMgy1O2VuFNBeIqomCOncKIvArsDyeL/E
	HiXkV3noVQMmsU0JU8K4jJ6tMPlYok5h2gP/NIVZZahOsJ4kyV0IjNx9PcFDYkM6AGg
	u7ee1P+5qm3uMgO/ApVp9bdaC3U+pPjFxFbR+/HI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b0fb054-e9e22a59-55af-4c4c-8a37-6b2179b308a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b20d64dc12ecc7777863d489ef9e7a44cae32833a30483e7a93f641751a8003a
Date: Thu, 16 Jun 2022 05:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655358599
