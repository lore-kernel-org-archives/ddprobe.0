Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394DF1576
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644935784;
	h=To:Subject:From:Message-Id:Date;
	bh=3QRhI4SpGmRmTfiDxEz88CEvDIW+qIeZtv2OkUZBCiI=;
	b=L3HZFurydMSxyV6TJF65/kWKGB12bRIxDkF6JihHBP6Vqxpfy6hFXWFRJRyAU52o
	POR/EPG7So79gQVPQcQfMW7pp8p2HGemokV3W+qrZBiWDl/R69/ezlRBZjFWzLnxYjw
	FKOo+KWexfKuY3O/Zp6v4FhIlvKpvoMB1j7oAg/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644935784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3QRhI4SpGmRmTfiDxEz88CEvDIW+qIeZtv2OkUZBCiI=;
	b=cuNqUcAkhIUatzuWkv0IUgw3w/y0/QRaAjkWYRq5xvcabQdUmR27FjFJMyKQ6I5d
	eV7ixrZ0Gerse6qPmjzlmhhQxC2np9moq9c0Rd25QIMPjJc21skwXiz9elbgJO44YYD
	RBl1Pny1c2SFvAZi6XeDldSZeEyhdPOEqT00MD1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efdd0291c-f2695d33-f91c-4f07-b30a-f97b6c634d04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64ce15fe3087fe8b669efb7b020d42f1ee0c2a680134d9e471c68b2d37ae4ca3
Date: Tue, 15 Feb 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644935784
