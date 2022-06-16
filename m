Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411807E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 03:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655350259;
	h=To:Subject:From:Message-Id:Date;
	bh=NPtWFc6TmjhtNDi/0tLorzgIGJRtgJ+9jkZs/sHWmpM=;
	b=Ci92ndTt5FU2QRrSJEm2THq6+NZKt5CrvMqKUR/5rfkrJJ8/OD6gelbqPddbkpGb
	VlaFHQTxSTERb6brOfJk6ZyN55S1cLJNyOMC534A2O6P7FV9k6uQjNP7dWekMEfa3nr
	cE7bqFjq6EQQBpztbF7ba6ioQxqrr+A+Zj0MpxEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655350259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NPtWFc6TmjhtNDi/0tLorzgIGJRtgJ+9jkZs/sHWmpM=;
	b=SvH4Xi3bIc2I/MIj3NzcBzt2fRyv1azr2G6CXlfUh5PSVW3JvBYUgVkW6fgUPc6g
	CZ3sI0ZoybiOP2OR6igub0GftEZKiNY10h4zaos1+NWNOO+MhCN7CwS3hHTwH2kcyNL
	FoQTPhlLUdRW5ubw20aLZ3um4Ba2pBlcEtYHe02M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816a906e3e-3128203c-7180-4152-bdee-82bc6308f9b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b990bc0b6cf152d5ad87f20351b5f4f926780380dffcb38f7ea1321a86ddad0
Date: Thu, 16 Jun 2022 03:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655350259
