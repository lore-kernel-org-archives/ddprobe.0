Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A725D4C89
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656367613;
	h=To:Subject:From:Message-Id:Date;
	bh=ADPFEgS6TMX+Tm0qrH/pFQP1I2r8qJ87V9N7jhow9EY=;
	b=VQzEpX99JkEHv7yE8PAWKLOold+Z6NBtqrzm9C9tgwP7kw3GhSs8UpJ6mwukTdDX
	dBP6XgW1bwPeUJdZn1swfw8C5rm9PcDQ2pp2Efh7+vFu9/5/IMbEb0ANMt799dI4bJk
	Yi9hda4Y0Mk0FxnAeVE9xNLyUdYYKaa65cITNDm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656367613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ADPFEgS6TMX+Tm0qrH/pFQP1I2r8qJ87V9N7jhow9EY=;
	b=Km8cIXYSn/hG0W+xMBId/DGUv0I/+qjJ/r1kULw0KzR1Gp1eJDeg6bUkXFzwZ3vA
	3VPjQ3UcJBJd2fauc/r/lPnGvcE9/VKU5EXl8bVUnSUnQnFaF8Y+GPIAyhUWSU/YIbA
	vf9+GYlwa7JwHqGAegmDAu6I7Kbeos6RtgMShB2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a73402d2-02b340b3-abd0-480d-bfd3-d6e2f4700bf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09e90e904bd8f69d99f3faf906ceede437ea35d5d99245865349b4dca15797a5
Date: Mon, 27 Jun 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656367612
