Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2031872
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657473412;
	h=To:Subject:From:Message-Id:Date;
	bh=lcTX5NIyQwM0Brh0dUF3S9KvzhQOxNzJjNL4Bc/1o00=;
	b=lIU5izB2qgRshUrUpK7s6v0ABHiymeHdwgh2VwOzHQ2gYLY66J0IgJMSz5P/trTZ
	c3Ng/sd/cfpdLxYgwqe9fqjkyKSajF8YeDQN1LGrvZ2cC40PsxFS+n3mu6bTZO6Hs+1
	cKK/KEOs/AFgwzaVObb8vusGX+KLeHM7aeNGYboQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657473412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lcTX5NIyQwM0Brh0dUF3S9KvzhQOxNzJjNL4Bc/1o00=;
	b=HFybKbeomEhagBPA59iEoAf1gfNBgd8iaPnZWyAH7LdZc2D+4XFE1Ux6gdFM6aHh
	BH1D86oNRrvsBgY/15CQL1yOyJU6RjKsfF6pgUI4/HZGUuAD8ER4xw4U7zzLO/qKnHp
	YDk6R0Pbiwr/x+u+oGNELEf4pCNqczECnr4/A8x0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e91d2d62-46397b6b-4a9b-48a7-acb2-0527ad35e392-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50280a7cc220f5092c0c07b461894205ec8e205e2ecbb1a20f0dc6e7f71abade
Date: Sun, 10 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657473412
