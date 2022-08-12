Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6265838C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660321852;
	h=To:Subject:From:Message-Id:Date;
	bh=PdqLfCyTDJIxXPonF5geyTtVMW65es1cFCsapFlWjcc=;
	b=JHSNYbwJhdybj13uqcKTwB6gZC/os8Asm0BNHL8PJ78nENrDlm3J0mkrwCy/EDbC
	fnNQYr8s/KRp3JxafvNwE18ML6pyV9zj81QP9/+m5cwbDFPWgXDdVgX2xjAPF5yR0NI
	xswdPDaDviUf+59mkR3/nj81mgNKoF80qlkW+lU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660321852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PdqLfCyTDJIxXPonF5geyTtVMW65es1cFCsapFlWjcc=;
	b=M5G0gsAraoHUCKH9qkmnKRPmAAgi0oaH1mdwWUn9B/X+e5xE/Hd8urlNF/U/XJsl
	cuyktzhAMAB3GzAT5vfPIc0HjDwKmGHLAH+x3J3b0UjMVCicQXDUDxbUTnlCrB8u7yy
	BlmSo4hCPNYUVwCn7bhm5arTg2g+WZ7zcOti4jfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292e4ecb2-d0c36556-f07a-4c78-b4c0-9e2dcc9bedd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4133d95f028da1f3fc031e61ad893c6ae2a39a07722c4c38208011f07d69121c
Date: Fri, 12 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660321852
