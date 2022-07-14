Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8802C9D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657796212;
	h=To:Subject:From:Message-Id:Date;
	bh=8moNRnzh8wmGx0xq6a60/rva0qaAFw5fC6cxVqq/mF0=;
	b=IfbpwrrG9uoHG6NAl0Oql0KdanA/xepzLF+Qq1ZKV+2KefsPECq6nkYLdakQu6ep
	B142htpmRAj8MsKtRWi4DopkwFSX2zjkW6gYP5g36XQ3JZ8h8VxB+xNAk2avugnch9h
	KaOZM1wFYSiVrLFZYfgMOvUvadVx8IqRWQ/r0zoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657796212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8moNRnzh8wmGx0xq6a60/rva0qaAFw5fC6cxVqq/mF0=;
	b=Pt+f+jg4vAu3BPLl1tN75+3MpbAZYjjRIyGKXrSTicl/hFgUTwSLqw4SIj/ZG8AW
	1G7KvJwnfCkaFw20FSU0nuBpc2yv5LLVxFL2kIVe0mhBMs9az9DLG7UfggLTh5+KpxD
	iK2PEuVNAyabjKshwyZjgblD/ZyO4Cbzwei7P89A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc5ab63c-97c26075-7f9c-4a58-b99f-91b47a6d33a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 013af81e5c5119e0f584966c39dd4762c7a93fdb0b025efd906b05770e7698a8
Date: Thu, 14 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657796212
