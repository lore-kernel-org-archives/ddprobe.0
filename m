Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0406D4A38
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 20:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658782612;
	h=To:Subject:From:Message-Id:Date;
	bh=34Xnqg35247gp0e8037ivrwPq6OQowQFcJhx2GJQHzU=;
	b=E4e6SUusrTXw4JTMtFgdEPhiQMHAN5TtexE2Z0V5mwgxmdc2PvDkxmOQ1YQUjcoG
	HV5SzqXujzGbzkkrQi6vqzY5JyWqOIt8poQ/AQBTFqQdKizWe92XsN0MlVGvaS3Cu0L
	hoiR8SNNIeT9foqMJZ53CJvd1sxb/bOE5a/dnkxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658782612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34Xnqg35247gp0e8037ivrwPq6OQowQFcJhx2GJQHzU=;
	b=AI+q1tLGBHKZBbKF0vcp5sNcNmui9CTExsCA+nGL1Z+93FR9gCjCNl5E3wTb6eQB
	LgI7jVQBOq/gMzDElBRPXah2rN6NKWEJ0BSptY2ThnhxMJry0xNCiFqW4TuHQV+Uz5k
	Xr9OFCWrWpdA0VL54ElUa7V134O/xu99KiSsjKkE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823725fb31-2be9a6fb-2f3a-42cc-aa6e-ca9a5ae22c50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0d5b78eaf252c55325360ef1b7de038f6ab09e8a770a0fe650e6c53e6b643db
Date: Mon, 25 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658782612
