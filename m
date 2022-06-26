Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB6F7A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656239812;
	h=To:Subject:From:Message-Id:Date;
	bh=oy+cFrHbDkptsPlzSQOt0WAOD2RRpaSg5ZFE/wroyHo=;
	b=f/cjm3IEfMIy48kejHdcNOWnERLzfJil8ypIpQZzyc0Xv+Q0yVUJeOsru1ktWjS/
	9RSvXnRCSoET9XJLyPdDLV3EvW2LZE2trvnmk7MBSX8uD8ZGnHYj3HlKxhbYtsrQyMG
	P2bTItTa8nk39TjX+ggxZEWiTdHXNIOgC20nVYjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656239812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oy+cFrHbDkptsPlzSQOt0WAOD2RRpaSg5ZFE/wroyHo=;
	b=G9dQf428P2drmIxbqgkEzfcDlmP3oXRQ04yHja4rHULTnM3ozVZvC68RHR3DXqPL
	WlDJp9KEzFvrKcX+GHJBMZ4WV3QMgEppFHmpESm//paMuT+mIiXcdmug8sb5FWi5MtJ
	Pw3FMmEufxHWGQ93TYVt+W2CPt1UNAUKSXeUu0co=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f95ef04-238e7153-0340-4e32-918e-2002e5c32fa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a956918277141d69e931c697f3e4d8b49981da8f1b37ef2e444e1569941277a
Date: Sun, 26 Jun 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656239812
