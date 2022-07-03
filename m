Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3A81FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 02:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656815812;
	h=To:Subject:From:Message-Id:Date;
	bh=4b+fAvZHNSs7bCUhFPN5+jKaZR3HKZLvhZqESWPcAdw=;
	b=dSNxCDB1tHOVSYo3Mx+YqUTi4xWIAI8DhbfLN/jPFuxsZV4arAhJT9GOWy8FKiYw
	OX9z0UG33zxnMVSAfsqAohZRTV3yokouME2gudnBtAcTVki55Y2PT6lqnYnix7lm0eP
	tXmYclqvN1uVYEBVerue+84pTGJaXV+3OPp+fU/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656815812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4b+fAvZHNSs7bCUhFPN5+jKaZR3HKZLvhZqESWPcAdw=;
	b=dIkQvAB96r1i/wi+0nWAD2E48fs0QB3b6GrP7zV01hb9Dfu8U9KkBeKVYDc7aWEk
	Esq2QOcQYxEnFOH64TnllfgjOWMGqNYFR2LNWiZJ77+hvjK4c/W7dHDGu2oYzPiMCB5
	aH5WHMszFd8yF9swMepYxTVcgsGmWHDu6YX8X4Dc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1eafef5-5285165a-c430-4af1-8cdc-de033134e61a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8960041687df03fc2d6f4f5bb2005c02b3385cec8662d479f66692e3be8fcec
Date: Sun, 3 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656815812
