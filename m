Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA5236C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660267852;
	h=To:Subject:From:Message-Id:Date;
	bh=JNZnPlSfgJqB+F7jzu9PwJ0oAgJmiJRQjwx45+tiIRw=;
	b=Q2C+kiNDrSAgld8KOJIL/ad5wRj9pcVDfddwQwCi/xlYQo0nKetSMhuO0p4wb6NX
	+6rKZwKSf7wXGBO6qjr02sqi7+vDaNBYCHLMYewQbF/CReB7Gz2hsru1WXdfkNB2AwC
	B5/kf1d6DHIhcEcu8m/HDvKPyGdwXTrXylkCvC7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660267852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JNZnPlSfgJqB+F7jzu9PwJ0oAgJmiJRQjwx45+tiIRw=;
	b=YR0QWQJrLUob2SARBcTTxkQR5qI+z0/M8JSrVABlbODd+2AZ9wytHwMX9nxe06Go
	ssgT3oV9xe7nmb+t5qOLPSbPWiwwd9ymFllakULzngnWk6G5jWpCbdyKVc/h67nHT0I
	04REI9IRrJhJaP9MhBETRPb32Wo7E+nudb2x/n8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828facf32d-4e575207-db13-4239-8432-694bc3d34a01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb5ff184cba1fc24d1817c32b0d701e81daba824f2dcfb62685f5e8c4822d5de
Date: Fri, 12 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660267852
