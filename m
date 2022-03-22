Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7D57E5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647954085;
	h=To:Subject:From:Message-Id:Date;
	bh=vJdcxcaivFrgPPQ71U+ENJTl0xe03tSVcn8sB0qswok=;
	b=f4wxohPyUAR1/S0ozPflcdlPgiE5vGXWdUvz3F1lfvarcKvnKT01tfqykhrAjmPU
	dPrjJ7OZFj9oH/5ZrLctqXZNFmxaVCzvVWfnuWkcRCLe69Ez3n1Gg1FMLe6vhtD5cYb
	L+1LhfDyxValX5klqWF3lzPfbOOXmacYVZOiVkuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647954085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vJdcxcaivFrgPPQ71U+ENJTl0xe03tSVcn8sB0qswok=;
	b=MWCxxuxhv9cDEMZLNT4wvIPgYBm9AFfA6E0XOIsp5s3+dkP3ty0KfRITClZcYG/t
	xtWOhbu9Ei0MiQvCH4ANGiaj5iLOsX47r7Z3IO3Wnjito6IRtIIaSJnI/pFfaxd8q3t
	FgNcr1FgTlwG7KLVmwQuzwZP4fV8xrTDQHVhPJDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1b7c3ca-b2da4ea2-9a67-4ce5-bc2e-7c87135e393f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6575fad57783db6b78d490b298e0d7eaba80c486f8da60a0fa782def91feb4a
Date: Tue, 22 Mar 2022 13:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647954084
