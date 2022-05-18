Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A4E1FAB
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 14:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652885699;
	h=To:Subject:From:Message-Id:Date;
	bh=UYxgTHD7jhbxF6nAW49p9n0nBUlZkDQGEJinGLm2eO4=;
	b=QAudefo9zWD5Qq5tgk7h+Yn7+MukV2uOvX15MG/3N1W6dDSil5tIJFH2FUd3CQ0S
	yirskjdYf0PohutiR79eqCb4bYV1ztoZBgMW5Gsd07kbUtOVnrZoApsgHtS/2mwcyvv
	vrij0rRgNxthcrdDxWA7x0q7DLkzxJqbA3eCEhsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652885699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UYxgTHD7jhbxF6nAW49p9n0nBUlZkDQGEJinGLm2eO4=;
	b=XONMH3ZnvlWNXisnzDXKiiMaoAKQ5OqBuvjXs6APuAfM7+1WrusCnV+jATa42/RI
	Man6/ye8f+EMzgK9G/btEeDf66FiIpht4aB4e5r3PfDf0aGjtYAyESgU1g1M8ITqsBf
	ThUdWH7NkfXI7Yf4p3+dSfvclWpbXu8tG9NZteF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7aa3b0d-1d9198c4-5ad4-4b5d-955e-292b2a44f505-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d4c80e3823fbf264e500ebb074682675912bdc0f279974bd2bd1c25ea1e886b
Date: Wed, 18 May 2022 14:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652885699
