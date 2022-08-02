Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7807F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659476452;
	h=To:Subject:From:Message-Id:Date;
	bh=lO2J0pAIi1wmUjO71Nczr0LfQ2ZnZ3dLOpTLTq0cw8s=;
	b=FxTs6copKu5KrdMCGC8UJlqTDM73UF+vQPYNJAkCppBDIqhZBrW+qkkuqcJCDZR8
	YbaCScIlqJV2N2vqKcYWmPhmAfMKGWGKryd6EkuEMbJp0JQDd4vfPEIthh86OPZeCGS
	VfIB5M6rjQC0xbQ9SLLxjE0Pte8bKbSnGKnWQpto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659476452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lO2J0pAIi1wmUjO71Nczr0LfQ2ZnZ3dLOpTLTq0cw8s=;
	b=UpdmDvXJfDoikh8zIiI+0jeBLHx5cz/CNuUEXD1HyDIAuDTMrIHCgGPvBe5bvcQt
	izrEIHtohyEtEsyRJZuV9tU/aShYoIp3BxbNawk4Jr2t6kiDBnusUZm+abpwneMkP6l
	IREcqpbrNSHBYI12UB9zHEY4F2jRUvRHGzESWIOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182608124bf-82ce57c1-b311-456e-97e6-d4fce4b5dcb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54c5a6f9a8cdee984109d38f3c1437807192ffe8649247018e7d464d0a429df7
Date: Tue, 2 Aug 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659476452
