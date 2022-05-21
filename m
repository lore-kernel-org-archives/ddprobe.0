Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C12417FC
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 09:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653126839;
	h=To:Subject:From:Message-Id:Date;
	bh=WIFQGDVSsB4yLPuZCDXGxBpr5LZENMaamsELbgdk/Xs=;
	b=lmPgPbRq+T0KL/ppAXT9mmBl9VrO7jRI0AWy45SdztYHU3U3cE1GAevbCF4I53G8
	GTzqpvcgx0gJH89nxPMIaRo3fYbuJPl7e2MXk7fy0Jkytd5i5DZYQQMSa3n9kucRLA4
	gtOnI78v8PBkDbBgiAyEVM+ek8qDD57y//RY/d3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653126839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WIFQGDVSsB4yLPuZCDXGxBpr5LZENMaamsELbgdk/Xs=;
	b=gJu5MyzTP/06SUWuC1NNVKJ2g6kYOniclEhjKzZ3rJYEwfrXz1wnvIYu5yE4MMLe
	eAmdx0nZPmB/QS72a98XhmuJpJX9i8RYIurWPjRFlYZjW/xmuXDoaoDS6N9MqJ1jqda
	H3B2vRa419Uxswo0Rc/4zY5tNReXxv8def4ToGyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e609bc55-b553c923-c3d2-4969-a585-fb1cee6f4ffe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 762360e82102b47c6866cfe3f0749140e58152871695391c3ffb7dc47e516338
Date: Sat, 21 May 2022 09:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653126839
