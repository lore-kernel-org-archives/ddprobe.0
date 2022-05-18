Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D971FAB
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 16:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652891159;
	h=To:Subject:From:Message-Id:Date;
	bh=RAcaQVrVvzyW/iZRF1RIk35xmTMvXLKZI7Cg1PwiNxA=;
	b=ioQ7wxF7AxxnnztHZpDb4ZYDV62pFUO//x27VfyODCDMdjbVuHFun/LIXsNrUbx4
	Nt1olyZDT9gzud9BFxHgNDIk6m1PjlzIpE/pS3nUvGCRfKPOziTFuPZfMq2b9Qcn0xo
	xqehQ0kgg6VpXq32HVp6kX3SJ511M9+D34ElcyWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652891159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RAcaQVrVvzyW/iZRF1RIk35xmTMvXLKZI7Cg1PwiNxA=;
	b=itya+6ibKNGmmEcIHv8KhN2NmSqBs+2UWPkCiTWay+p+t6HB0T2pwkqhgcQ6JUGJ
	7qkY9evdlRfO5u24GXpwKWbZMVV5PVR63KJ1YiQtvjX4+qUj3715WuCX8ItTl20iers
	S6Hmpue35b2ihOWPFlPxvJjX/U7rs584uR15BtGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7fd8b26-5543b268-53e4-4189-bb75-9728b930d503-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5613e302af53ba0e91372a025131599661c84bf8dc9651c8f07d406671f3f8fe
Date: Wed, 18 May 2022 16:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652891159
