Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF90D3D8E
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 21:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653426359;
	h=To:Subject:From:Message-Id:Date;
	bh=/vc/5I7zILznCX4K62hINEw6KYQw10+4WhwuEp1MwBc=;
	b=io8gRxzCVGHG6ErVf22QZ6GjNkpCfrBis+UEsIMa897fksMeFW0b8CSIr8qUpFST
	AM95FVZLhN6C1lxrIr7pd58oQrNz4DPu8ur/dFU//kKdMRhtXWcwvR+VGcQ7mBlKLOX
	8LGi/mpSpCa34fCK2aXUmcPrxBWNaoYyqTANoW4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653426359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/vc/5I7zILznCX4K62hINEw6KYQw10+4WhwuEp1MwBc=;
	b=cI4L4cHNaysl1msDV6+Qv60rV1V4GkFQEfZgLe5vHHdspITJiLzgMpdlOy0S2VcE
	mv3EGo/h9Zof7M+x9YQrtpvEKORMSzrxBMMmBz5+jg7kxAgG/kAI06PCh9+oVS0FgKR
	RTEe6JRgTipxVfeHfw7Q3lgJeDcOfFO56JxZqmIQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7e40bd8-3de2b785-e185-401a-baea-e4f3a3dbbe8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8019d345d17cc4e83855ab28f010484fcbd517d3bb7ddd680ba3fe04e38c5ef
Date: Tue, 24 May 2022 21:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653426359
