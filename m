Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D95EA28
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647994584;
	h=To:Subject:From:Message-Id:Date;
	bh=ZOTFQs0SkB92rSDgY+QZJBRBaJc4+oeRTYb1/OJSIyQ=;
	b=i5JL4mSD5Kz7mlH3sPnZDyzVSUorHto9Ru4gSur6suzXgxrJKYSim0MhtzVjUTtE
	cTy8AcdebEDwOXvplsViNvRbK+fVy2wZIpH4Sai8zSD6IJ9E+10tbsermqDo6iRVKC1
	os5L+RhqL+wX8gACfR/bR1D4Pxgn4MEMk3RntdkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647994584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZOTFQs0SkB92rSDgY+QZJBRBaJc4+oeRTYb1/OJSIyQ=;
	b=M12kiuiYCH74wezkJFSuF+ljCB5BWZBP1No1cZ5evgizbbU+mESGM/viaBSUZDBT
	WUCQzl8vTvyK6bVPVzoDwGoJnL1dODDJgqwjRTctCeVqyZJXhfZaU0Sv6Pt3nSEaWMW
	HblwnNCLmYZdKC5SrVrxwhgavWuXDAYdE4461umA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb421beda-cdd81718-67b9-44d8-a813-6fb01dcda3e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8003a73658892456bb271f85b61e0ea1df8a405995452e176968960dea0e4d2
Date: Wed, 23 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647994584
