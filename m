Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCC12F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647102985;
	h=To:Subject:From:Message-Id:Date;
	bh=NLmIhs0thvXOaTzr6J9F4mFXozcs0KBet3tiVEqR/zs=;
	b=WG7lq8k4F+Jmm8fBxh5RiPO85d1HwHXq0zaObQ0Y6DHVhLB5qPR6KBozeGHoggpA
	hfoQA88DLznUVqwkcW32fiDqKTc/ZTK02SmIpmnu1w6ZugWptFPdfEt/Tfy+pSbpIWY
	5msPU/MWYGTXo4GNw28VTv9jv+oaXjOw+zz1TCHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647102985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NLmIhs0thvXOaTzr6J9F4mFXozcs0KBet3tiVEqR/zs=;
	b=S3GOtJNF2qK50EERU1TqRjNpZDomlcLtZazmfnQCWmvHsmovAb3NuCy9e4m/BIrr
	L8nplmYNGASf4x0j1SHk9OdMzqI/1e82cSPSZfiUsU2b5RpvVugUE4qQ+SIe2e3gjwF
	cuE9IasLBqF3PGHppI8Y8ludsbqZYsEAp3oKB2KU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7efd0255-af367fbf-b9fa-40d4-a575-4a1d9d047d04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb981ad6fd4b8a06060c3e8e348c3e232726d3f45b301aabdad11f22535840c7
Date: Sat, 12 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647102984
