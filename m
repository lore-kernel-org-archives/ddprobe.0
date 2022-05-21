Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D3B17EA
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 08:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653121799;
	h=To:Subject:From:Message-Id:Date;
	bh=ojnhqXTYde8+0fn7ynpzaK/53tOp7ZgSw9CfqHUEkJg=;
	b=MbrKioQ/X5HvIUNq2P+u7dzwZrjRwdeddpKdblf/Rkvhg/lhCGs75IK8Bnt0PmUz
	uDTPUvOlPMUCL/Q+0xDG+dpljyWJgvEBtHG9rKwl/3BZafndvH4gLo+xZT+fJeskPJf
	epF8nDjrKynXaE3mnQ3OJPR9SvEfYwZCj46dvido=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653121799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ojnhqXTYde8+0fn7ynpzaK/53tOp7ZgSw9CfqHUEkJg=;
	b=jDgcsGbsFIuahBpkV5gcZMpOZ7zb6JdzWsq+u7iJzZG91inLi7Wd3uDaIqER0U1Q
	i3hEJzdzQw9FyDn5tauscbyQpLFcuP2h1J30mWDvyCURWGUENInMqfqnhsmQwGTarAf
	9F2j4NSQCwNHJjP5IbFHYG1irGhiG8sxPLotUAQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e5bcd4b2-f724aadd-c17e-45d3-b3a7-cc707ca13e6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8ce095aaf148010f5f50ef6a107e0d4a277861e222f2556dcf81ae3084fecf3
Date: Sat, 21 May 2022 08:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653121799
