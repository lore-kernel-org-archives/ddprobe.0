Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5033E7477
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660780252;
	h=To:Subject:From:Message-Id:Date;
	bh=gwnWl5GzmuXmsI4BJZ5mrXQXwMBbhg1T9KlDrq3IKEQ=;
	b=Fseihdd9FStVz1XNStKTgLuVudGZdGx0nGYLqh8/UnmQFGk5cru0MOX+emnrMc8N
	8ubzTIbr4aHSYy/YApB9OX/Mxj2yLfJX4ZHFGapxEfdbw/iFiKj/6vK5DXGg/4zBn4g
	aifRPPVx8mpDOWT1cNsZWJzKe07Ud8aCfWRpS3+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660780252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gwnWl5GzmuXmsI4BJZ5mrXQXwMBbhg1T9KlDrq3IKEQ=;
	b=hrMPyH6UScyORL1pExoxmpSQDCCYkd5sSvtptP9/qEgrSUGClhJHdPGPY/2nJpwZ
	xSaOz6filvfMk0UoLH6+Gk7YrN7DEeJXGGPeqrP04WTdQ+MFk5DvLvkhJixBx2FPtZz
	VVOECATPI4Fz/vG/8urmi3/rOIRmS979k1ougVig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae378d9a-66999cf9-b461-4234-b9da-4d0d72f686e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22cbebd9405cb3a3df3047459b0af2aa15cbec7d39e06e5498845111586bc4fd
Date: Wed, 17 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660780252
