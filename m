Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F27F1FB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655999812;
	h=To:Subject:From:Message-Id:Date;
	bh=/Rwy3ZAsTzMcodeUhGV466BP+rDPHGIwHlDd8UVFOzw=;
	b=OZN4j6JrLXsAb5mvoCxDkKdGktJPNQ4LitBvtoqFUyZqIsyhRragaFGc6s5OVsV1
	aMbj3atQf0s/yVcaBSkD/n7tjR85GinVrtFL625DyXfb2WEEsy7n3uSCHsNGxzj5n9W
	IRlmLbYIkpVxxyxlNdvegTT4aESqtzxJruSCLi28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655999812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Rwy3ZAsTzMcodeUhGV466BP+rDPHGIwHlDd8UVFOzw=;
	b=S7Wa+zVnRq+0FdP7msIT3zDhIoq5VZ0/qqkKD5zD0hzaaMVWB7VCwyQD3rumzvVx
	YsJItgva31+iJOsVNSkat6lP9opO/POlDi6Ze78b7Xp9i/AIQMDz4a3/Iuw9D4gXyqC
	qN5KmOwhxnGAkD6tp1w9lv9x90rK0BmlpJaOt4oQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819147d2b3-282a68d5-40bd-477c-9a06-3799fb001864-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d69614fbed99d251b8286999a9c16a0d1b61bb18779e7c264bb96adc7a35c0e7
Date: Thu, 23 Jun 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655999812
