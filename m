Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D14E1C3C
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658285212;
	h=To:Subject:From:Message-Id:Date;
	bh=bBchmuAQvWmhr+3aL0e2smyxjBPiWy10uMylDVm8HP8=;
	b=OMvnDSycTIk73DSgR6BC1yJ6jLLi+GxchtcLVQ9STJDKVEaX9LW1C/wN2FUfGIxk
	uOxB1Su1UYHfIwbU3gJTFa9FYIMN9mjIKvnl59zk69o4DEMqaZxERV3yUqLYesSZPHT
	kcmnxkg1MGzff4MZ+P6NJn2bk1hiRxYXfC4kvPBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658285212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bBchmuAQvWmhr+3aL0e2smyxjBPiWy10uMylDVm8HP8=;
	b=J4dp+D9fMdTLZhbaCPjzb2rEZoEqWun1T1m6UCpRjemJPBLiXUtWVqsiHNImpJGx
	aFmnGGDpLN6l5HTF3ciwdOBJIp2UE33vKVwnvl3hy8llKaGrvTCNSFpBzRu/pNVx57x
	jsW9kvqwd4yjv84jzJV0NHaNPX2R73bNvxtYWRPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018219804254-c2b01a30-3c71-43b0-809b-2c2d51fbbc81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8eca942e022951a0aab601f89891ab048565ed417155f3b1f3370f93eaaec53a
Date: Wed, 20 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658285212
