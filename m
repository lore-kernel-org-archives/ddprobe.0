Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B1D3C28
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658246212;
	h=To:Subject:From:Message-Id:Date;
	bh=nsWzLnxL4bs9qVSVGaKgRMV0VNw0UBifU6JQMPNg7X0=;
	b=MIWXLuGWaBaaWB/J88lPvoa0aWZ/jSnLVp7d7Ip6rJeyQvm8KmJ2G/s/a6DQWQ0s
	CqztypCxZwyCX9NMb3/X6Q5btIHtwGtKFUYc7u+F3nJKpPybTBok1bCK1obc0I/O0Wv
	WMWQ/SDzPXxHf/vpEKI/BezKcDuvhUxRb5mJRLB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658246212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nsWzLnxL4bs9qVSVGaKgRMV0VNw0UBifU6JQMPNg7X0=;
	b=h40e/3WKlPIn7mrXL5JguHBx09LKMuD4t4hZv8ll+BrZEDyO9M035eybaGVxYbhm
	+uIrX3ji4LsLk2QGsWQp6qOSJC7w03j3LK6Dlpc8weRdBh1fVtIw3DiK2iPzORMpulZ
	EIRsj1vMDFMaHFj51PG7xbor9ayjLnuv3HFX+1HM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182172d2ac1-a781dd3c-134d-4c7f-bd8f-bced9f2f050b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6e3ae16d7fb17828999ba2d36d208dcf4602a69344fee12ee7b7024bf41f571
Date: Tue, 19 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658246212
