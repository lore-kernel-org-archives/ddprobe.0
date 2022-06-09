Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36187C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 13:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654782539;
	h=To:Subject:From:Message-Id:Date;
	bh=u7eSge152j7oKCtYiGiJZFPsbbVXRaqCmvBGVYucbI8=;
	b=KLEgBzr2rA312IyI7hdKRQgt01O2ulOdSJ6zlCSR8dstzZ7909swjgXPJw1HZ0h+
	NveJgYiBDUSL5OmJbO9iapPqpDhjWJoDREppmJeOhFiyT/Br287ZF5szmYHlE31nyKt
	YPWanOahUElM0f/YhcTHuFlVVlm+zdST+blkQQT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654782539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u7eSge152j7oKCtYiGiJZFPsbbVXRaqCmvBGVYucbI8=;
	b=W9crnHlVmyjSCw8PzkLZ9AurjXaerTb2YGPvFTWIXN9smfn0rK7PG9aimMWzfoJk
	//b5b6W2IY4rLGwkXMGonNPx3Knk7jrRFEZ00DIgZj+l7fsxrnp7MERaHlSzLwnQlkv
	CDSHq7VjyO+o23GRob2HZ1tDlIgQpAaOTaaGgdJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018148b9b5d3-df754c78-a707-442d-b45c-859af0791821-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b06cfcfbc57b74ccd679ad67e8d91ebe12ffcfcca83c852e5fee7e996d529f8
Date: Thu, 9 Jun 2022 13:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654782539
