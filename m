Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B60C1C2F
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658762212;
	h=To:Subject:From:Message-Id:Date;
	bh=WPEYWL7APwxs5zPgy3KbbRF3O4w3Hzh3I9tIffDBN34=;
	b=aCHaBBKraQv4QACT3F7X2DGPAVUzTeaJSgo/WXyfJSDFxyPzG1xl+qDzwCJ9RGkU
	bgzYHmtMzX9+7SeiLL+55jB1A6T112ntTJyalkN1GeiqGTvfyHR9oDkUPaaqeB4s9Uv
	36Lo1LaVZWpHuMBWSvM3VRcTDsUMH4I7RaEJ/y6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658762212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WPEYWL7APwxs5zPgy3KbbRF3O4w3Hzh3I9tIffDBN34=;
	b=M3bB7BWzQZlyaYb342OewDbpXmoQ+YfREFZA2gXBHtiJ9ylevHCqFIv2MJa21Uur
	rHhIbsesMbVPnlDMBnPVx/xKk0KPPnER2sVmpoiTAGHtGetUhJ+AZkpqpvI4mYxrMyU
	roSqkI3tS074VZ8KP2MffbW/jodEPiYsZbyV5e9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235eeb3ea-8568c9d6-6ad3-4348-8218-bba365fdf12b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a1f3d79d8b1f62e6bdbd3973f37c4aa16cf7c908c89b3315455fa67cb630cfb
Date: Mon, 25 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658762212
