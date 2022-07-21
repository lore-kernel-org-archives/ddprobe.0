Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4349C1854
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658362012;
	h=To:Subject:From:Message-Id:Date;
	bh=Kpk1RdiaOGCOekhugdF5RLf6tRITQQkaLT4q48Iu0vM=;
	b=Qs1Q1dfO6cY1SSmm/s6ImbLrEd2/Q9ABYTa4RWqL3ibHzZ1tA1HUXDnH2tpSQl8B
	4FOGnu71G+Vt6H1CVgEnBPKagvRZyUrM5IvFKabmLjraLRrnTGqI4tDC/Iz8sf9WVDk
	Cdrczx9o/SxadRHrxWvwQ1LCvjU4RLQFM9t3qqwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658362012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kpk1RdiaOGCOekhugdF5RLf6tRITQQkaLT4q48Iu0vM=;
	b=Oqc0u92DZAmku5Hm0w7CCesgHsNDb87g8cjDKWZiIP8E4Lg8VDyiuiT06hE/6S/w
	l2Pen7c3NfTagiCsrtB1juKuX2cf3m35+kbe3j56mcTWOm7Ii5M9b7mTwoy4jsLMN5R
	fHRC+Yxwxq770MI5MiO+6bxR6N4tyJQ6w+GCruJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821e14228e-2839f17f-cb69-4d1b-8bd3-d130242a4555-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 497f7486cee68ee6a93f0bc1d3a3759f4d3e04a993cc70b7bb2fee15c8b38fd9
Date: Thu, 21 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658362012
