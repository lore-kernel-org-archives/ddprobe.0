Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8B13207
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658670412;
	h=To:Subject:From:Message-Id:Date;
	bh=R0IqdqumKEDNGWoLb9pnMQmhMKpH6aIX0e2BY3Yx13I=;
	b=TMWFP8/dVNnfIyGf8RblIfLEg0GfUXKn7w18HWRGmEaLbJ/0eti5pcL53vYXLrHM
	fYKKZEUqonctt1Ha0kU2J2rlNKAuc5JxlKA+AnJMPM0aqZ+xGL8v48VlL+cNL+6Mc/u
	KYsYikxDgAOptosB2NnH0bt2mapUeTddW8TtE2+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658670412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R0IqdqumKEDNGWoLb9pnMQmhMKpH6aIX0e2BY3Yx13I=;
	b=EwfrtKhd2RNgItQtjt4f817v5gw9XztCc1I3i79CUV6jmuBF4G9uQ+fzmqvZNSXq
	bjwtZUiOSaJ4gBwtS8JY9jc0GPU1Uy4P1GoWCpR2ZHyoUUdFV6qVvHYP+oVJCTUbldH
	vCwpjPq/ZcwkzII1AwAtj6FYfSOSEwes78JJH8Gw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823075f1c9-60871acc-e904-4c51-b060-35409808e385-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc526ac557ed5e0a166e04fb0bec93ef010bd0303f45c796e9dae75f18673034
Date: Sun, 24 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658670412
