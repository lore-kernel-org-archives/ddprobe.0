Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7938B7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659355852;
	h=To:Subject:From:Message-Id:Date;
	bh=gaTyKZ7b768JoICQ8O+iee+UBuqhoBpe9MnbpjUDR9o=;
	b=Q6squFLQwun8eWTg+Ml5cdsBSBTVVLQxn16YtWPEYrQmXIZBN9FC5SkkpPdT/lUq
	CQbXb0nQGAdf02vZKtFxlRPL+dSj/tSVLU+gNRF8YO4U5+7oQbIvlkxzfY2kXMAeUTK
	ZF4XOc9KMwa8cpV2OiOSdjQvVjr0pV0Hrb6ibmw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659355852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gaTyKZ7b768JoICQ8O+iee+UBuqhoBpe9MnbpjUDR9o=;
	b=iOZhBocZuvOK3m/kVXQ2lvBsf5GdIaBrFbn1MpuYSYdA+QR72H1c5bsDOJywj3ja
	DxNkUa0+6HvYNbPkjy5ldNskK+F4ZwG0G7QSlHPfCQnHdpjPaQH9gHRb74pffBJbw+7
	c4WxFIaWmvcIB//l7HA1WpKUqXqX/6OqBwCB2D2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825950ef04-2694a909-60b7-4aa7-a513-c8313b85dda4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f8be782aafb18ef7e0e077b65a07b1a02a580b55bf506e3528b761641ba7e28
Date: Mon, 1 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659355852
