Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356BA6D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656604012;
	h=To:Subject:From:Message-Id:Date;
	bh=Jpo9SSbENnZZLNFX+UCB9FGqXzOefk4UagTfYU+E468=;
	b=BgjnOOkWSJFnBLq5YdCfYVsNNhi+rumd8K9A8dxdIxXurkjJAnUzlVZzJdFnqfPK
	I51ghhH4hp5QJfkmy+CTiQrL3RbVrEdZM7NvKbE3/cTo+wy5l6fxz3LO6ozJL9bEJHP
	zG5zNyTGxs1HLG78nj6nszsyEiT9mkTTSoch+NMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656604012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jpo9SSbENnZZLNFX+UCB9FGqXzOefk4UagTfYU+E468=;
	b=VkKEVqfunvYFiFPg8IZGF1rTyTQ4Ubqs08GBzW/TNErt5SsmLgWAr9OkFI9zIuq8
	DHw6xzelJBvCio5oFZZKtv9X4Un+go9UUYniD1ADirHntyY0wHHGx43OMajGeyXbSSC
	EMPGJuHJxEcqCDF/bIcv7yVeAZHs/zbA+1K/kjB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b54b2f40-ee023293-cf5d-486c-af8f-3b6562b98b6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 239941c0df544f906931a5456f4653b0ee1b4876aa80cb7c53a5d180ae0e83e1
Date: Thu, 30 Jun 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656604012
