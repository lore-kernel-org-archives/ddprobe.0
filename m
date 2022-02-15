Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3ECA116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644902185;
	h=To:Subject:From:Message-Id:Date;
	bh=AEH/u2YP6R1Otn7wlqg/Sc5Pov4RdzyZ2avPcKKi5Vw=;
	b=K745Y7MVLYH2kCRJh/5wumZRF3ZQk6AKuwLwH5i1MHSbpBEjgCZtL070wLaqlNFi
	8T5B8Y2KipyFn4HGlORna6kc+4ekc4MG/iqIwBiFH0h/GyXwLrOs5JyoEHx4JkBUAiF
	TGESGMSYF6uLWMFPmIITldwnEIbqjUIhaS36AOGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644902185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AEH/u2YP6R1Otn7wlqg/Sc5Pov4RdzyZ2avPcKKi5Vw=;
	b=aoPG/mosMujHqL2s22p/6GBrpVA1jxZpCHStT50PmGkjESu6U+/YNg5UDro6Er1G
	39huZ4BgqdWtORxkUIv+fSqP9Z24YBqtSeHqXgHTXKOe2BbCuZZw62cM4eQs6jh9dz/
	hRLoeDGwFX6yNUB90iVWsWkMdYzId2wJ9ZrXAJn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efbcf7763-88d31e08-543a-4298-8200-77b25f2ec26e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5b9972891191164f1717c6ba4263293877741c11757b089b43a246a976ed091
Date: Tue, 15 Feb 2022 05:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644902184
