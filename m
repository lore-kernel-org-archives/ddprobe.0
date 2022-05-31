Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8F43D63
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 20:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654028819;
	h=To:Subject:From:Message-Id:Date;
	bh=xwNtTdcgq0eJTtLF57xlme+pMDgfBH1QldHVtQV5jfs=;
	b=kqMgQQ1+43BeWl2HGKeveEmlU2zfXxc6kQ7hX64YhgEOSSAbMjKb/qn9bu3YlhvC
	pA6DEI0jftBoT8mGY/nd36vBVd2RAQG5hpH+lj8Wcly/7cVFO6eanWjPU5MsEqrVNDA
	0kxg2o+oNSs/u4n4u3qCdaobSWL5gDNtiyRwVt5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654028819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xwNtTdcgq0eJTtLF57xlme+pMDgfBH1QldHVtQV5jfs=;
	b=QPsPqQCrpU9OWZaQh/GB/hwCR4vgCitrjiMvBIadHE69xpkNZDkpSbO9UB/ybYKC
	h/jLOzKKrTbkt46BWEoD3x1Rw9lOvtfy3ZfqAXgS+bLsG8c+So/Po4R/10rcCe9eJCO
	6Btsit44kypp82UfovkFHTjnT6VssLeJCboMoUII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811bccdb45-98867ddc-98ec-418e-a9d7-c1a0bfe2d606-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b74453e246ed53682170fdd5864210419ce6f0abc12b9c36e2cb456980ecd0a5
Date: Tue, 31 May 2022 20:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654028819
