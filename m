Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CE07F4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 10:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651832758;
	h=To:Subject:From:Message-Id:Date;
	bh=5EVNugTihnD6MhL/l4E3wfwZ7yAatJ/er79Z44wVXis=;
	b=iEiBReKWf91neoJjSjcWQuZXcRnzbec70ClUMy915w0pYsW7cHFOPJoF/rqOC5e6
	e0Ynvw+/+NrGBNBcqnOT5a65lTbFCsgLSi/YyIVjnqUbqg55QwRvtrwkf4w90VCz/pq
	FUIeFBKWKpvDdiFeZb52djSEm6s/bvA77kUFcgRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651832758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5EVNugTihnD6MhL/l4E3wfwZ7yAatJ/er79Z44wVXis=;
	b=OX/RWRGUcZcuuT2mTDGvspapvvIuz36S1KwYp8eeFHgcjM9Pt+UKPFGxfki4EmZv
	/w1cFjHo6BTaHDjH4Tw9lT8vIO7LZMLtBeuDc6/R0cHx8zWnAzHs+cpZI53caeWbmTk
	41lb/P31e3SMj8FItMjKI9e8iirstezR5+U243lM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098e7a014-937c1898-2606-445e-b8f7-134f21a29026-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17dab04d053111081d33933410e620f52ea1a8c0a64ce09ef6659e21fbadc451
Date: Fri, 6 May 2022 10:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651832758
