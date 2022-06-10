Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2DB7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 23:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654904099;
	h=To:Subject:From:Message-Id:Date;
	bh=iAoO/gt1g0hwe4JYDq687rmlBn0eaBmzZGWYskaB6zc=;
	b=KOkbznUOPdEuUZjU/muEpn7syprY/DMJhnFhlKFFcvlq8aKDllb8CF/oiASgHUyd
	gbwA8JGKrJ3Dzv5fj/jhueGs4MQoK9X79NNUYpmCn6+708iGZM21BKmzMDoOeLu2zlC
	39ba5K1nw6vnvDC6pj9dUkihtcWGmSdV9dyC8qw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654904099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iAoO/gt1g0hwe4JYDq687rmlBn0eaBmzZGWYskaB6zc=;
	b=Oq7dTT50wNWqiJOObmrc+mbcnyz0VD00kjP0PvaKTtuwzfeEPv+mVBJeZNZJOIL8
	Es7dmmaC96OfoEO6xetlKPe4XsGWPSmD8kv8t9FyEdO9++ERXYqaAiDMn8Y6ah0qfZ5
	JLV+wr/taYsACApWiQcK9qsqXM6Jo3q0kpyxJxBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ff8918a-cf730189-5a8b-41c9-9a09-358f00ac3d22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38ff1221819053e1e2175b751400933ee17e37d5944ee011af2529ebcc8a3d87
Date: Fri, 10 Jun 2022 23:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654904099
