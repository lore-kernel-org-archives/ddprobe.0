Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15553806
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 10:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652611979;
	h=To:Subject:From:Message-Id:Date;
	bh=l+p7lmJChrdoKgRBhpomTutb/PnOuQprgs6AKNTjbHI=;
	b=YVv7aIBgti1BIz73qTYTLONcMkveBY/VF2gkhzwULIMTO7+ghWsHv/Utv/uQAkSA
	ejPsRVTEeQak7Swjbhot2n9FaC637EKT0QxNmzkF3pijJLSZY4CYVWoO4yFFTHFwIbp
	8zdU0hKmuRl2U6+AIqY6w8mFiEhboUgHdgPHwDT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652611979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l+p7lmJChrdoKgRBhpomTutb/PnOuQprgs6AKNTjbHI=;
	b=GswVYOSjHVlARyB281HMJVwPVpfJOzPKZnwkTN+Ai/l7Rh+QdI81+T5OM3Hk92f/
	wGjOt+stx912jHG5bSJctsfhrpUoKAu9Cz8+JVU/jol4H3mLumVDjIP8JCA+2B3Nk9A
	R8K2kegeJ90nDJOtTyF0j40uC4gi6wgYV35k9eTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c759980c-b5a1fbf8-b576-4933-b1a1-c873ba9e32f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88d29448e3baf10ff12db188da712271801f4fd437e8a2f23c5e12b7998a858d
Date: Sun, 15 May 2022 10:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652611979
