Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4121102
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660551052;
	h=To:Subject:From:Message-Id:Date;
	bh=6bUhXO7DMlWWNXHgk8sOddYXez+RkhSUuYXzIb7NUM0=;
	b=cDge6nldIJ2wZzGjzgR/cy81RwRL3IqnGdivVsoy2A4vSHLIOJPFStpS3M9AlS6i
	wjEzC5MlunoiXpBKHTabzdsQrsi6TXg783XxV/gURS4P5X6kNrIpvXNS3x5EnZXkg+b
	wNxGHJM4hHIr9qdfdKYEmGr6f4BuuMc8U1OXmlWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660551052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6bUhXO7DMlWWNXHgk8sOddYXez+RkhSUuYXzIb7NUM0=;
	b=hulIp358UbPukGC78GEOgAVxEWqVwkDynpPH/6D5PmBQQwZKjkJgZ1BtV4dcEBSp
	HAZcKc2Y45ovyq06BeuOlgM/gTbEs54ibQIEC+ueR3guyhG2hRkWT//5Ul2R+lfGFjp
	POY5V3bSsz4FyosDL7biBKePh4rVhtcAxy3mFKfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a08e3d29-44dabeb2-d265-4d33-af5e-bd48a0438a47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92b3b596e35bc38bf4e0ae7b246469d9d9c05c827844d3d5596d2283995b5d1d
Date: Mon, 15 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660551052
