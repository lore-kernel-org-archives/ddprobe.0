Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24566366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 12:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654088159;
	h=To:Subject:From:Message-Id:Date;
	bh=WOCPG7ga8Pa+bF6kTV963S3K0I5V+QBiHQxp5bvOw0o=;
	b=KOgZTwNFUTPQZgcjfUqteOfUva+I/V5r8rvqHRzvSZqwTg2OAyoVxjESULhfsCy4
	+4LbdLKI/Dvu5i/CldySCIYo/a6SvMNdVAkGsogtuyQ2vjuCTnwTsRnMQUCF0uchfXp
	Vtnuama8/nYgdMVyf22sIf1hlu3dcGuCDz4bND/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654088159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WOCPG7ga8Pa+bF6kTV963S3K0I5V+QBiHQxp5bvOw0o=;
	b=d7hlZ2EqVgnvNP7DasA3h2R53ILFjcuzc8/NP+U5Z9giIf3iw3jdxagroLCb3C/s
	ICetNhqK+KMSDqRkyAPoA5fgeCYSmfuHAeNqEIaZhxNcoVdgymTRetBsQVzCPdOQz9D
	kYSw5nb+hMzWpW+D/XvNGgDrN/jQDNjcApoUggaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f565070-251dac06-441d-491e-b317-22de497a2232-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4461623ecca3a62583e9f8d46b8ec8c8e0e23f0a59a457599cfe79747c5bf573
Date: Wed, 1 Jun 2022 12:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654088159
