Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99B6D7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644892585;
	h=To:Subject:From:Message-Id:Date;
	bh=Zgb3sZPGwuWoBFQfFlzIeLxPhwDKswPuFh7T58AYeQo=;
	b=lKc5FhYjJyrQjNZCGRY+zICU/2MAadyHeLS1S1viLNPgXJvii1Iayi4FVvActzmV
	tYL4xPtDe8Wj93HHuPVeYJmtTdXmB2hKnmpLvJr3lqpWa7KagNLtezytY9hsd0uc8AM
	UdZpc7ffPJBVkx7OlxwUJY3qYcbZfAxnRJ8me0H8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644892585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zgb3sZPGwuWoBFQfFlzIeLxPhwDKswPuFh7T58AYeQo=;
	b=WoK31UZLCZG9u1pBR6SI4YKE2lOs7orgXctO6vSNDqYXwpG90jD8ZrPcjdt05LmJ
	qT62aXatYQi1UTZSW6fEiKvZcuHYt1QSPXZr5psbyA1ycgCDQ3Mz0/TEf8jXBON5k64
	MbcEVmIiKWHPcE4K2IQyGcbzWpfFTi4z1NtDIxis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb3cfb0e-e331987d-8c7c-40d0-ab98-f32b78f7ecea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7690bf7004d452ce6808499c2b990fed2bb107ec004f0ee54ec769b817719a3d
Date: Tue, 15 Feb 2022 02:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644892584
