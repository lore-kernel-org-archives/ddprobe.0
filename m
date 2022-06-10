Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3730B257D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 20:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654893421;
	h=To:Subject:From:Message-Id:Date;
	bh=o1RbntWgISacbc3IMWPrpRLJN0Svx6Mv0uXab5WZawk=;
	b=HuMSq53dVfg6r4rUj4Sns8WHiK7gB8ngzwUG0ZakzM88B6hDAkkZcywgvBCztdHD
	/umCsppyK2C4B9OLfUDE4ybYxA75wqrxBknUcjqnsN7TVWsgRgpxulI2OVqCcrHXMhW
	cfGhDwWJjzfa8ANOoVh3Wbrrvh/Uth042ZsjyjsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654893421;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o1RbntWgISacbc3IMWPrpRLJN0Svx6Mv0uXab5WZawk=;
	b=eFkxNsGp7weTW0f1BW81HzpJiCbZys8UhX5Pf37Se2QImx0uT/d+akFC6LkvTF3K
	YKkakDPS9muPB6PA5y6aZMPjy9liHcx8w/1IKtj+Tzxf/dkjH/kW1eLoJIYVK0VYBlu
	sdJBM+kbRsUTj/NTjDMuQGMZ7QXLXrfrF16m5hBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f55a2ce-e20ae48c-c209-49bb-9480-6edb3fbebfe0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e0bf653f695b57ae8e855c8255dce75d1fc387c2f46c5f124a8af902a7e6b26
Date: Fri, 10 Jun 2022 20:37:01 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654893419
