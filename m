Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618EA63D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659525652;
	h=To:Subject:From:Message-Id:Date;
	bh=U0HeW3H7SeqWD9m2TR91Bf/WN61XiwwEQdzCICR/0Sk=;
	b=NUj8USiJmEafkURRlTnc27OT/VGriV4yy8aMnLz3W4hL/Y9sSEIb/GVag2m7tioS
	bAEZZ18pVaGKm25yAO8F1wKBScEvXeSwssapXgFY6IvTk3EM+wJ8w7TwAL1sdVKmkhx
	i2lhF7RMRguvUyMlEQ9AcoZEjc9V+SOVIN6+NmrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659525652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U0HeW3H7SeqWD9m2TR91Bf/WN61XiwwEQdzCICR/0Sk=;
	b=CfpneyVkHi7h1NARJFAuEFHKKFhpURGSikQ8aKjRJ40yUEn/Mdo1fSavOplk3M5f
	Oyuw5MzrCdLknn5M0svJrRGb4cuc5CWY3sKQorwplT+/BvEcMxoK04637EkHehDvV2N
	NLwmzV7lqln2Z/L8WV3+0KE2GWywL9CFCny7Pv9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182636fe080-7049d936-7bb1-4df4-98bd-25cae65f6ef9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dc9dd1beff53289216b9cb7445020cbe65dea1810b50e43e9453bfa71d1887f
Date: Wed, 3 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659525652
