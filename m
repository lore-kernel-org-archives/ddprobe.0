Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7B27A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 06:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655359259;
	h=To:Subject:From:Message-Id:Date;
	bh=xt6R+9CD7qhKWq7qFKXUDQtYwMY1TCADjclg6p/BFc8=;
	b=b8D5K0m8B3uLzM4cXhUOxsaAQtoDG1h+z5V9xBv8Xlihjli681yexxci0Gy0R3aF
	12RpFK52hcRAgKdNH9g8+efQwLC24xJk29MXWeYdAsE+rxwWnRdQT1GvVuzi1ED8kUC
	UvTfs1vNgxJO/Vw2F0vQzVqf3OuTugyGCLslic8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655359259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xt6R+9CD7qhKWq7qFKXUDQtYwMY1TCADjclg6p/BFc8=;
	b=e8gmwhdzEzMXi5DnsQHeAui+gaurTHbH2zrHHng8MUX8pAI/OL2y/gq4uGr2FNiK
	gDBI+H7YEYxTbGCIu6LNybvrN0g3G/aZie1XVMm7MUSZJcTwZ693qQswEnuNRs0hIH7
	LaPjKPEF0rvlQcOaujW/DzSTSpGFOiiCbXcSanRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b19c26f-66b0b2ef-2272-4dfc-b3cf-e788a2b80ba8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fc42e354fcd499505cafffcf1e7209aa97405b0ec513a579d8830e58b610818
Date: Thu, 16 Jun 2022 06:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655359259
