Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4504733C4
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656940012;
	h=To:Subject:From:Message-Id:Date;
	bh=hXUaDAebT4Mb/5LOFKTvUlJLz0sKvfvop1PgbxJyyx4=;
	b=fqS5NSAB9QXsDXCbGwAKBr0e//HMhNMVFn9gFtS+/z5pbFnrJ+BXhxTP2IbagxYU
	GGoToiSkozuduPLEAupJaLiVzPvpDatdxEDAzAD7mO9u7k+c6uFIQY96b2qIYeR0qk5
	Dn98eKGudePplXSjz8HK+7ZnK99xzraKSqqTFidU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656940012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hXUaDAebT4Mb/5LOFKTvUlJLz0sKvfvop1PgbxJyyx4=;
	b=BF5Lojcuc8Pxe6Kso6bwQuFiw/wTOm46q6+ctUZ0NzCCh/LOOPOEUg3r9Xx7o2MF
	wESwfN9yria9O14sac3K7BBtlYFB3YOQS5I807EUIGL/ejHnGQCVDp8f0XMoJrliHyh
	BNqk21XT9WMxFJN6HN1E2YWUYpjf8re7iismrmz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c95222f6-0ac45c80-c878-4a10-b931-bdc7535c6e1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a08e82716367f4f6185b1c05c07a1ca86bd456a16882260030db4a2fd9913437
Date: Mon, 4 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656940012
