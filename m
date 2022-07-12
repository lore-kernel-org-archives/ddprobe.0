Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501986ABB
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 23:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657668412;
	h=To:Subject:From:Message-Id:Date;
	bh=6L2jXBFA7DJE2jZ1mQf8TLqVdKfQpF1vEvTkagPAi/c=;
	b=aCBQ/mjU2PFYHJ6gAKpfrflPeDs+Q0RHidjDulWoQzSDh6bvWANfJdPpM3nd/ZWf
	mwSXxzcrKnBSHntE/PIMjW6DB7ZMwZnRaefAcw9e5ABLky0Ezw/jTeJlDFtiNl5iyVj
	jnMUtUKnYMhF2qSvLxWRpaRTQNMfTRhGwqN5s9Y8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657668412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6L2jXBFA7DJE2jZ1mQf8TLqVdKfQpF1vEvTkagPAi/c=;
	b=Fed4hpU0my3d5m2uDCdRkWW+vKcpWADzcLZj5MfJvbTiVJFfIDtqjI9fkqjTe00w
	AOMjXQ8c2D6NcwKSinM/hNPLysMwVXSG0FzfMKpfjVFVsiBsElWKnxpHIllMDOY0sPU
	0bA9d2FuXt+N8n4keB7HvS6k10vwzNh/b4RnArv4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4bca48e-9c01864e-278e-41b4-99b8-8a950ddb9d7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcd1280b98794fd0b7eb874f057f99f8a3fb7684ba8b338e00d2b48cb800b09c
Date: Tue, 12 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657668412
