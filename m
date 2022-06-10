Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8797A7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 07:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654846139;
	h=To:Subject:From:Message-Id:Date;
	bh=6ArnGnIisszUgYT1x/Ocze7FzdcACzhKO76M2UwNjcE=;
	b=j7o/jJMSJJIohqPiHST0oejzoY4cki0y1ZKhy/1qEqEJQ4V7epa+pHc6a987/v44
	tvVAcEor3PtRee7BgwPr0CpAun1Tyu0uKQbeKibFDdZ8IihGo3gLvMUjs/86cwD3a8y
	MkCguutcNlz/xLSIx5Mv/ADZW7QSGZSVjvEJJA1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654846139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ArnGnIisszUgYT1x/Ocze7FzdcACzhKO76M2UwNjcE=;
	b=ASJzuKHkIrrsVof1S+ZOQQFdVvY7bySiIh/IZ2WekSpT5qUMuTJSGbPz/2puyuU3
	8bPjAvB/Ls7quMU4aOOBNH+0fvmoC1ts0kcheoPNpxsySDtPojkKSHMDCgEyfSlPu0/
	8L6wcn7LLesORy65eL3gdlBlkY/Mi5kw2gZzXmdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c842b8e-17f25067-306d-47dd-9c4f-775a03a6a348-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78c9df99228e4b99ae52691132dd9bd991b8c0f03a14d76460edd0497ff3d052
Date: Fri, 10 Jun 2022 07:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654846139
