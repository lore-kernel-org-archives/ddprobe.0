Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0665217D3
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 12:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649160238;
	h=To:Subject:From:Message-Id:Date;
	bh=3ccTbrR/JXlQ+pnTl6MgPYbEk60NHgOWwUILGzSCGvo=;
	b=JazTPh2JgBtX2V9JVBgWbYnKVVjRtLIpfGeGNfN89XLnm1LoBcD4HEUKYbxBjV93
	ENSLTw6dwGFwo4sg31/fvQd3FTdy70n8avOrR+ejwdhxQB/f4emwvTMXhuAUpwdags1
	Mz/9ba/9JXSO25LCMQ8JCabGXhiC99atqyvuecV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649160238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ccTbrR/JXlQ+pnTl6MgPYbEk60NHgOWwUILGzSCGvo=;
	b=O5eyw8xALPC4uHEFAE7W5LCHC+4RwtjtWoFBRf0PL4WLF2QeGmWZ9gNlXJ3Q5j3o
	UsnD/hNM3K6zo3Zo57hrUyLTAo+g8mZ/HR+jQKKoyLFNYTNWMZ4GcHPim01gF1z1Gfq
	cfWsdrTvQaynDy9K64jV0uSZLExKBYNSTEHjlt/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff99c34a5-c3ad4e00-1afe-49e2-9fdf-e0815c11a370-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0518373102e575963cc1c3afbd6dda476df11a70dd45c1113817ca1f631607c7
Date: Tue, 5 Apr 2022 12:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649160238
