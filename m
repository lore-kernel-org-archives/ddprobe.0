Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC9433D3
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 12:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649249278;
	h=To:Subject:From:Message-Id:Date;
	bh=/Ai9dwurmDhHbyvW/1jJifTqO8yc0ycZ/kpgBxgeRfM=;
	b=fhuys7yD4wN1B+NXeZ1ivyz2Tc3xUJjwjDP9X9tFZUGzcwQDToc5fPZkPM2SFx10
	98e2hoHsO9jde+GbIx+KGYt/MuLvy+jTIfSqO02kMKtqcEpz4cJytpnieb6i8rDHrH9
	18PbdmmZZIz3pkWVJ7B24MQZjQZv/fQTpEgRzdgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649249278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Ai9dwurmDhHbyvW/1jJifTqO8yc0ycZ/kpgBxgeRfM=;
	b=K5qOmJt+AVgaDacdHasRlDdQWK85ihhZG7uKIgggaSrY8qcSNoG/nNR0tivvFcOg
	upabAhuWwJ20vajBoF+3MeSRZ/ySgwRh5m9Rv3hmQgNOrbdILCu0mkSdnIVXE5ql+Rb
	yaghr1zWV540LKAoBRmVtJkI1M8VUyRAa4XqycOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffeead928-03bffffc-fba9-4dd2-97e4-02ffaec51f75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 508c537856dd3cb668decbbf2486b8102bd0567e2dcbffbaf20e2d797c8424bb
Date: Wed, 6 Apr 2022 12:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649249278
