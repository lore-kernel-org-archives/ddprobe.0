Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF502598
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 15:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653231899;
	h=To:Subject:From:Message-Id:Date;
	bh=lgKCHWX6ej0Rzi96IyjalbweNcaCNsxhXnTx9sOqjB4=;
	b=GMrfe5a80aT3wl/gmfBmK+J8YYblEYgnwoXTwl+ldubefcjrD4BLPkNTOg6oNId8
	v52RLaPVCVywQ+Jfb1tAunlUpv8ZYRTFr8niQKhiVOe3WVBctugg9pYhgaIOMU7qbL+
	+K/MzTJw66EJZnhNZBqRNJTX2u1EvUMjbu1kBI20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653231899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lgKCHWX6ej0Rzi96IyjalbweNcaCNsxhXnTx9sOqjB4=;
	b=QtQWvx9chyrXvnUK6upbphztChpTAXVrSEjgiei4AKpVsxb9/iTWnROacCVhCLCu
	sd/3YUY7SmT3HAJMLKU/ZA4bYqzd4TmHcUeKwwiMTMKKIOAhhV7nWjQEfbr4VAmeW2J
	VRBEKX+PrkuomGJmZXpUVNx7dqnhaGYPrzZ3fQ1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ec4cd282-a58aeba8-f0d9-4775-90b2-8cbbb6024c9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9c7a73bc2ef4c3528716d26bdd6da7c14b29b8b6bfade77182fccaeca3eff62
Date: Sun, 22 May 2022 15:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653231899
