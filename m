Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A8136A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647074485;
	h=To:Subject:From:Message-Id:Date;
	bh=oCGsH4b51ZvJd85Buqvjj/HU1K+0Oe1QH8Xu4c2xi+I=;
	b=dR4eDNTgQMQPMeWjTv/xNcF7gqrt9ldGzr5Ow9Jyw0WvZBZ2f5SuKxM4qXPCQSyU
	J6VWuSzlaFOpyGZd7oAMkED7/p45+WrFhxtoV1KYxaJdUfsILDmUT/SpP149N7nLOeE
	qYeRRG+u9XIZ1BTItYhf0rRH7JZ/uO+vKpo3ZbE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647074485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oCGsH4b51ZvJd85Buqvjj/HU1K+0Oe1QH8Xu4c2xi+I=;
	b=j0Qtn3cUz22oK+P3p/dBLt2pbPVC1yOjM2GAAxKDw91G4Y2K+0irAaURM9B9MJTv
	wl5XPP+Yw47u0LkDNeTLp1huPOZTcFvPutBPWKq3FHMALy1hAeHRa4hJCvIgk5x1MxC
	/J4y5NTnw4oejEmdWMc5xU8YWyaXUHjJhcMBFExM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d4a222a-e5687b08-33d4-477d-b059-618d17237195-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e1869b20a2bfc8f871e26cc70f041284d196553e60406715de2bd36d13cd5fa
Date: Sat, 12 Mar 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647074484
