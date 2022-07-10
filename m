Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22661139A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657460212;
	h=To:Subject:From:Message-Id:Date;
	bh=SKxldFugT8at1P5LGPpxgCwihma3D0Dyo1odVZWm0uU=;
	b=Q2piapz3LiLfDUndQTQJNf6GLefCzv5AsJOehHbIt4vy37OcGP8BkeHUXzsX9LU1
	qiTvE8BnOisLlDrGZPiN9RkIKu2ILO8w/H3b8vst60u+COrMQc87TLR1NXsD51idb6X
	2gFCU6/iD+0EkydZTTbY9/8IoVwa+zQIOggh5eTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657460212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SKxldFugT8at1P5LGPpxgCwihma3D0Dyo1odVZWm0uU=;
	b=JDPRODcKVbg3abvnB3zK3ZvaIsdCbeaXjPvBM5RTDaCbmlgYrI4BqcdKZntVOr1H
	drjtbup+mQw07AXcr1Mp8DWSKUY2PxnjWH0MXCucSQQLGQfQan0RvFfcmEDTGpMRmzW
	vnIYUpG/BYbc29iyyOTjZ0yForiOb2PH+wTPm8as=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e853c291-f2691823-6e87-4f2d-81d0-3845950ac0e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d42337db22dda0ad0176cc11cce05fd7934cbbee7452184e7e5b6516d594cf68
Date: Sun, 10 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657460212
