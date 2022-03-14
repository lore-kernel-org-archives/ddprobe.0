Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0107469
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647298285;
	h=To:Subject:From:Message-Id:Date;
	bh=AFnfkc3A3n9aGpT7h8hurpBe1pe4U006vBh+c9K5ROQ=;
	b=hSUDRxaH+l8wHtigrqHbYlVkKdbAqJ4mlbGpVhjYdmLxWRMIJgNlYCIxApikTurI
	/w0+pgbDvWyIAp+FR5tan4cSVTbY6hjZNZteorgAZaulNRFkmVllr62nbqLMFgN9h20
	cme65e4ndwT4cuOT6bWHmZn1Iwu+HuqMbM7tz3vo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647298285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AFnfkc3A3n9aGpT7h8hurpBe1pe4U006vBh+c9K5ROQ=;
	b=NG/gGfm2OqsG6Hl2MHWqEQ72P3pnjFQzfPOGSLIzrIEZK8OUhZOB/LYkHtcD3s4+
	/DaKtZGcGAlphRpN8ZtmRHQlvPaWT/pWspQqD4SoGGByhKZTI+Sc8xK7EsbeBKiHGuw
	7uBXL9YPSeQ0ev6sVh7Wo9WHPn8iKX8hl8KxiOC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8aa10cd6-341159e4-65c2-46a5-9420-f7f3c5512e2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc9129033c1d13de1013c33efec02c4f8ff331446f79f81d7c81bff46ed7bdfb
Date: Mon, 14 Mar 2022 22:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647298284
