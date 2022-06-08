Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798C133D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 19:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654717019;
	h=To:Subject:From:Message-Id:Date;
	bh=U1Zkc94X78Xp9LnBjdAX9MHjdzv1KOLKAqZyEnPS9kg=;
	b=YlEHqE5MnvpjdgvmXSN8ceFskzdyrSAunqohVYcCLyLTAEfkp0yAPu4l+Kl5Vpjd
	Esmf8Atzf3DWc+YlXXiKeFdFZpsl6mrW/uB3N41ARssT/zyFJYYZ7cQh64TD6y3hrGP
	cguul+HcQleicLRcuzUQ2EOXFXx5A8VxHZsPH0l8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654717019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U1Zkc94X78Xp9LnBjdAX9MHjdzv1KOLKAqZyEnPS9kg=;
	b=BjUukJKhwvrBjFmK3I6A3bT2s7ySXWffOecxVT2wdQm3s6qYSPl8mBDWKLivb9uB
	IvGOqNtPUkD3aUV2HcKPRoqYPsBBXqaR/wM4T5X8gejqYlOQjTCv2GwlPwSoFufz8oM
	ecYbB7f4BSO53VgsdTBN+Riaza5m8vSbwdXZspBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018144d1f46f-4ad86804-2a2d-4278-ad8b-773ac7a1caca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aa98ffc8c82696fc041a0e5445a242977866dc3460ac44408211c6485d9155c
Date: Wed, 8 Jun 2022 19:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654717019
