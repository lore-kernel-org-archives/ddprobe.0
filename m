Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554A8A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658901652;
	h=To:Subject:From:Message-Id:Date;
	bh=f40Wdwbqkz+GB0lZvkgTLyblt7yB5ihSR2r+299NUAA=;
	b=O3/HzyRLz/+ssS5l57gk/6Rd2sspxfv7nN/PbqjUkTHnyvcQPVMMrBl7sbwjHvNh
	rRd/lZ2cSmldL2cIUz5uE6752uG68EzeU/gi3FFBPR06qFQUvY8vPpIUNoMU/nDlpgx
	NQuoJlKLYxmakx/mB+Iwih0H97nfOTR4xtB97w7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658901652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f40Wdwbqkz+GB0lZvkgTLyblt7yB5ihSR2r+299NUAA=;
	b=IRCiDSFIlfffQhvdZ2lDUfqhR0whGup9f/jaYEydGA4f0bzbah396pOtFMXlzIkr
	no5NylDC91vNpwJIE60RHkOJ7wnybY1zMRZupkYpi90ObB0oXj7qD++NGC5bFM742XX
	4OwmukGztsv80Ad7ic+4XNv8tb+4vn5pA2tLBGyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e3e6456-9d122ee6-be21-4346-8d3b-a31cde0f2457-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9c9bebf26085ff40f42059ca09ff6b0a76e109310041779b44450cd7576b955
Date: Wed, 27 Jul 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658901652
