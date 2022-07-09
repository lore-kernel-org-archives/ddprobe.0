Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334BE7E8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657334812;
	h=To:Subject:From:Message-Id:Date;
	bh=+1PInWU3TWU2zF3aHRHtZqvJget0ot19z6glvLwXhfQ=;
	b=C9xeQyLdQc0Tas9KvwaiKGjYQKpt1t83R7TOSaf1MTVKKHN2k2YMEmdXPAOgmRFG
	tXYmFDJc5f73Pgqrqr745SpkmtuJSUJxfs53MRewcxyWHQQYLb0l1vJbyOx9LoFlRI+
	nZTD/ioqGHYKf7eKN1fgPNyiChcg4ps/y7vpY8ek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657334812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+1PInWU3TWU2zF3aHRHtZqvJget0ot19z6glvLwXhfQ=;
	b=VmoorSidMAKt2ZbdfV0WZM8tqdghtRxdlqxaoA49QNvnA4izFz3e4KGMvhnHNmMH
	TyL6KJERfx7cYPTWF/h9O8xp6e9cpaK2GaIZRjZBP00u++nWYU6c9fKIZVg3RMr5iwV
	ZXn/xIVyWev1IWmEHIm5A5ZXuoPgi8mrXeY7ceXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0da4e6b-19ab59c9-ba7a-4a1e-b117-8453499f55e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdd2e40fe34c9171accb6fa608d6cf0523537c572a6d0577a36d7c07f9279695
Date: Sat, 9 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657334812
