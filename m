Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A787B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 23:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648857538;
	h=To:Subject:From:Message-Id:Date;
	bh=IDNXROSJqbqumFgXIB0Kbr/XajLd6YV9NCVpPnqSuUs=;
	b=jQuhQroF3NzDkDJiEoSqh6ccPHHX3FZqhu+OYYr4HSXtTRg/zVBjWVNvqpvu3faP
	2ZZyMqwIQ1WIcS3W5XevOFR6gXNFL4qYBy68nDr4m6opoBntsDix94EqNazbdO2uBu4
	+0hL2mxvKWEPPEs2vdrDWEsW5utFCiKVIcKsZBdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648857538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IDNXROSJqbqumFgXIB0Kbr/XajLd6YV9NCVpPnqSuUs=;
	b=FlTZMbzS7d25TwZuLj+D55QsjVR33THgSsNe5+mIkp1C6VPZd3yX9DZJpp0IrIFY
	n3n1ZidZE5IW09mrdIxktaOfbdVJojSXztyCtRxkP/5heHNQ1vkqMPyQNKvd/eyEON0
	nZ843n+DBUg1MbQMf+TM/0CwDQwnsFq5fzdr03x8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe7915ed9-01838c04-f495-4626-8b4c-586b88e05497-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14dad5c49393669d185bde185fbb1ffaad95abcd2dfd4b1a614b962574ff1300
Date: Fri, 1 Apr 2022 23:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648857538
