Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30929258A
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 17:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649439538;
	h=To:Subject:From:Message-Id:Date;
	bh=rCjqrv3HYJs0/oT5cKcoHQ9oV/Wr/To+p3GigsQpe04=;
	b=ds1Vm3iOxP8ror6iEfiAIh6DNj0yXOycplrVsvb4VaZ5JPdti+qUuEGs9yAUeEig
	Kg0xS71MKWJ69smoZXqBpl9c3vd14zWsmhv5ndqxRZC+3KyuxC/Z2YRbAUUbLKYQvBt
	qRq4IONwZY+9h2XDA7HUk83pyT/SFf9d+vkeB1+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649439538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rCjqrv3HYJs0/oT5cKcoHQ9oV/Wr/To+p3GigsQpe04=;
	b=dv5vQ+MB9kq38dsaa68RYSoZbnnikC0oh5uK+PGCeY+JFtNV9EkP7FHlSeDHJY2x
	zIhUoA53xfeAPg/zwipJHpSXTeUVm9jXQZL50+Ys6OuXmA7ogTcotjHropKyDgRKXEz
	tA07oCm9yvsWFegUq666neZ/Y78Egj953LFYCM3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800a41fc73-5649cc25-fa62-4f9a-a385-ec37e2ba14ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d3b93ab7c48676d741bfc5da90a9ea19b89e5428066a925aa859c47e80cfa10
Date: Fri, 8 Apr 2022 17:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649439538
