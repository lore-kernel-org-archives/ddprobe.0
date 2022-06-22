Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2699B136F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 10:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655893559;
	h=To:Subject:From:Message-Id:Date;
	bh=BtsIEMw1YwoWCOlUSUufXWvy1CTOQdmlrIYJpRdxRH0=;
	b=S1opQNdYYw2txcERoJNLYpHHv6xf955txl4tdGwqRazV5N6aWto8bnKdCFo58qnH
	1R8JNy8xSmnfRIcPIpRw6s6mdPL2ZNZNU7wUrAfIM3gwr6o4+rDWgXGPmXBi02et6xO
	bHD8Eb9DztJCExYax07/ggW0w62pi0uDbV98jh6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655893559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BtsIEMw1YwoWCOlUSUufXWvy1CTOQdmlrIYJpRdxRH0=;
	b=hRppGmcfNWVPMtDLI4K5TlCp+AFR+K1fVdKYRK+AAui3nNqDXoQlKA1X4K/on5yg
	q/NSL0MT9W18CTw/GEXLQbnsAM/5+9lsklwbpV52WS7n2wqBa+AYLNK0bKOijXeX0Tv
	dFZAnTU5SyjRN+Wopvp5nGT5Qs4naky4afpTOFM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818af287e6-8e64de25-98a7-45e3-8fe8-d118ba453c07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a63b00e066e6d14ab7983fe294342c7cce86267ab19db660107517c5a0403167
Date: Wed, 22 Jun 2022 10:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655893559
