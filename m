Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2258B10EE
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 06:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651990018;
	h=To:Subject:From:Message-Id:Date;
	bh=Npu03RCGBRq5Tdd6JMKnZqeST3X4NIUII+i8TTNrBJM=;
	b=c5han4Ql1MrBw3Vj43N5XSMNksd7WHnZxrumjcIkZTxGdsrcyiJIbIrm3ATi9Xxl
	xwOAE6LIpVa75X+3BcO9lIHFQ6qU+qlF9UQdVnsg0bUCdXU2C4zryuJlxz+4DPBuKVO
	mONh+f6gcE7/vvyeNhkDqEK0tif00g+E/u+yviNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651990018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Npu03RCGBRq5Tdd6JMKnZqeST3X4NIUII+i8TTNrBJM=;
	b=d04N88R0UZC3AxrFPNQagXy8CYxeTjSnDwzqB4FmypFYoKzel2iHy/IWAvflt1QX
	aHnD/TIgc1l2FnboAsM5Vbq7fZRfxd1NmcPUOl242aAmbRTCwtqDpsaHbKSXpACofR+
	xICrKBwNAICl76ysTMR/cpNV7olDtHLjdToQiDDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a247394a-aed18a8d-50a1-47af-89ef-34c0d262610f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f56fd4a7ea9bcc5d259bd05c8895a9b34bce28c672750008660bdb2f381ba180
Date: Sun, 8 May 2022 06:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651990018
