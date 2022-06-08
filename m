Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A358320A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 17:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654710239;
	h=To:Subject:From:Message-Id:Date;
	bh=IEZ98Bcbno1qaEUq88pbG4WbisXDrd0m8APgolwLI8M=;
	b=c0rJvp2rNwgSfYpxOXbB645sn8TLEbD+7puShlQfU6YdwqU2aKZcYeRwdNP1sYG+
	t5dJVGJAkuxNr3Y3dlJPGg584RcBkkH2JTvH/4ixm9llH8OSiOG2xHgDNgJ7V43KSPx
	NPpkqzCX+Iy4Ag0bvQN6Hz2E2vijUdBC8U44D1MA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654710239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IEZ98Bcbno1qaEUq88pbG4WbisXDrd0m8APgolwLI8M=;
	b=NsL/bgf21LVxdFYUtC+uwXShg8w+vz0768xdoZj8+vN6KlqPqcpyyo7BQ1ewzIYJ
	DdJ5a7gtLASQ1OKRTkeVZu2aNf5pzb1wFFbU1jYTcI1VHpOgmgx2Z/96M+NilzT3U01
	owzSqDc4kEg1Zc+DiEx5UfH5IU7klG74f96cATl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181446a8005-2b5e94e3-2dd4-4219-8d12-25735ad91d9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5afe24ef2a9f800606ddafc4834ec8061237a7c8ab73106ead715d17a2f3a4b
Date: Wed, 8 Jun 2022 17:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654710239
