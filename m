Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B9C7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656469612;
	h=To:Subject:From:Message-Id:Date;
	bh=OM5SXgtLtJxR0Mz2ds92Slj8xu2Mjt3I0Mpza845J3c=;
	b=f5EbctNpyE3sYiAr6CCKS2RA8HIxLxl+A9HQo8KKujIVTFBElnipfR9cuYyZBHMI
	jJT3bUGHGm8zVRanBJT+wvtLObiMRf0pqSNEsAY6VXLYc6JkRgxElKXr0zgYTLvpESO
	XTk4G2CHVfJ/WvTq1jqapqaTdJ3h0vlNQKcJQTj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656469612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OM5SXgtLtJxR0Mz2ds92Slj8xu2Mjt3I0Mpza845J3c=;
	b=DbI6nocEaq4h4rXc4xJWl/2XtVIuXWRUDlZD3aOStefM28j1Pm4op1RNs0acGW3u
	rdFLNnbGVFdRCrFNISL2yEqyx1QwjBrk0Zkeyv9yh2vEzNaUL1Vo5dqLV+2HsBLIL3j
	oSAEg5D2Mg/YlDeHOdyR0up+8Ht6BXalefZXddC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad486704-72e45830-7bbb-4eb6-8b8c-f98aa217a974-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a9784b4da05e5a12b93cb13cd5d413351c7706fd1d6ce63d772c1f86cff88c4
Date: Wed, 29 Jun 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656469612
