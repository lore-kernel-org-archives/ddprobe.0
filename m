Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C9D10E8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 09:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652781059;
	h=To:Subject:From:Message-Id:Date;
	bh=BqQdC2aY/owe/+e8/5xPzynWLaKtJQbjgkAskkuml5M=;
	b=Lo6Ohe7cENuFM4NSRaO2i1M5jQfYVQqcx0RPXdL8XVPlUe9MjhdOgAOaQOJI4SzF
	gjNVsrlLhzIRQYQheZSPl2pkHIlinK1ApuXgQC3QH+nvvPm/6LXbKwf23frWjVWNdKF
	bc2quI0XXO48S0oOZsOly2ek94I0ca1guRYHwxJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652781059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BqQdC2aY/owe/+e8/5xPzynWLaKtJQbjgkAskkuml5M=;
	b=BeW8alAnorJ6B4qJGTzfcpnG0gfiEJhcGNf0O6nNt3wRZG6AgemWo9EE0losacVS
	Zs1HhsU9vmus2Q4lFw2vScDBve4OL2FKWu2geuW0siNn/urVPB1+HBef6IhSM5ORq5+
	U1VkPuMqdf7TBit3/Kocnpb7vCwf/EFGpvuaZDYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d16d8ce1-0d3ce16b-32ad-479c-981a-0229a344990a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68f6fc0248723016444f92ae8cfacb10ee5feabdd8822273f8eda5eef0eb8029
Date: Tue, 17 May 2022 09:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652781059
