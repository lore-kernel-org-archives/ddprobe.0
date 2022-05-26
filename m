Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413BD10EB
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 05:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653541379;
	h=To:Subject:From:Message-Id:Date;
	bh=M0qJ4b3BsKO5hP0xNC6qmbfdXqF8qJKaRG6/nfcP3Gk=;
	b=YmfbLmI6ZyAxA2inQ953mu1MqCqi0SsZ9DoM4IMs/P9DBVr8+SoAxUiahXVPK6PP
	wasfPTvitFvEeVobM/FX9D9mtrHikTr7dBD/rL9J8BpZuFTVz1cf8XbbTk/eLhUqdvJ
	PshSP69uZWTcqmLCp6YpU8k7B5tVe/l64g4pg2Pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653541379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M0qJ4b3BsKO5hP0xNC6qmbfdXqF8qJKaRG6/nfcP3Gk=;
	b=CrwDA9VsRyBO7mHuaee48YyARtM3bruQJjuAyAe2/Xq7Bm0RA7nRgmWgKbbNrV7N
	yjBXFkTY063FMdy5/J74szkitYHujfvTY/FU1yiM2k20COIgZTSegGjYR8Wf5utKIO8
	KUIgnSkIYE44sfX4xZFgq8DsHEne0RoMos5x7qLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180febf1ce1-ab8bddff-ca3b-4f9b-a4ca-d09f40fa2624-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7f435cc6eef952d647362eb43b118fecb5a20a3b84eb8294552d894290acaee
Date: Thu, 26 May 2022 05:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653541379
