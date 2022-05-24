Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F68E7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 12:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653394799;
	h=To:Subject:From:Message-Id:Date;
	bh=C/u7VAiEPYqlM2d6EumIT9BaAxapwo4M1/wvBLSZ2l4=;
	b=CjgnJdoxXx/v0VUNGhcUGV/fAbqpf+9N+z67Y7WV7X83yopXnMeQGxIjZ+VxuL8u
	g+kGm3WYTGOX17gqGl45DW4M3qpWKRTqmYF9SojtxFzUoEGSsS6ffbwQVYS1Tz6UBV0
	EeuSkjB2/vv4dChqyBTY06B2rc68JCeVt1cPpD4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653394799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C/u7VAiEPYqlM2d6EumIT9BaAxapwo4M1/wvBLSZ2l4=;
	b=EzAj0d4yZqQpPwI2zOvenCyMBnBh+jNOz/ycX8ZR+EmaOcFobLomwrEagZf+gLgi
	CYpuMcL4AMAd+IIzoC0cyEHawxhHGTYgX3/rGFKCJVEOO3MiAuHQGNtKeVWBHVNvm/6
	Tm2oz8R3PNfBImjGCL0ZibZ6QTlIGy8jhMJFydC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6027a78-5a6f7d9f-274f-40ad-8df2-bb5f3d6b9e5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 873c2c28e397aafe332489f6d2e74705596daf98c042a7893a30aa6a8097989c
Date: Tue, 24 May 2022 12:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653394799
