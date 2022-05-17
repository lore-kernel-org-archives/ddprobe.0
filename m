Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2871854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 16:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652806199;
	h=To:Subject:From:Message-Id:Date;
	bh=9QgmENgXNwCH5afKExGjRKCFVfjyFvBjZFT4oLkcbSM=;
	b=fU2MtYwdBJNOT4qUAnK3QeLijjkpdDdfTanixUsrp+2RB9VV7GUPpZ6lJlPNOAZB
	ceqtxiLPr3CzqXiWDIlahzRiIOLVxAbSy7oMx/RZLnCagImbOyNW7GC+tGTlj60q/Ws
	k1MppS/nQlfYWzdpf6lRQ/5LTwai0RgB76BRluaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652806199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9QgmENgXNwCH5afKExGjRKCFVfjyFvBjZFT4oLkcbSM=;
	b=Gg6AGaEwg0M6r6FxVJ4WBl5YQiSJ/xzjBKue74UCifaRtVyM7do/pQQAAP1ZUR8B
	fqFg9dKCmx18POwSn/GlgGK0M25uFdWO5gb/oT+Wea8ovUdAKgGKlPiuuszsnEXuxOD
	geCNZSXqA/CFaZmDyEiHAWo86JX+iZzvCueJ2UbE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2ed2820-83f4db27-3e13-4c60-967d-3d26e2d6ac4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6722a0b622c80c67453480d3242f0b119cb8be8c6c76522fb46cbca74bd2c44
Date: Tue, 17 May 2022 16:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652806199
