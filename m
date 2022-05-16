Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6017A
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 06:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652683259;
	h=To:Subject:From:Message-Id:Date;
	bh=tIOqzS8U50JTeZ6G3mdxzVP9S5d8UmFirK1Gg2WAKh0=;
	b=bWZMlcr5xo0elV+kW0nwRwgKjVtoseDRNg4XEnpC+kgmFKiFFOXBiO1CDTMq7LB4
	McNz8mfAoM7lKkP+/lVQN14FvapHnmbQqXmZxDBLcJS8XuK0crTK7V9e+20OWYTGPw+
	RHX3wGbbTYouFIOW+4GPr4mdImTjfEddZxPPOTkA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652683259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tIOqzS8U50JTeZ6G3mdxzVP9S5d8UmFirK1Gg2WAKh0=;
	b=gM21sPBfK5dDvQ06iG9vRgq468tdbxapeS2dzShf9Ykk50AS+Sfk3IeZK2EvyiPk
	1z6ksRgm1r/lV8e9tlQE8keUYosEllOuiVvKHo6Zzzfyr+PfabV9ej7vdFVR7v5/txP
	dVZ2fdDu6pEOK0mphoBM4cX3p4Lv2XEV8N+0pR9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb993d89-b8328f27-1400-4bef-a457-3c3eac7dc940-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eff329a39e2a10d0bd74e9fc1fd8c59c0e066947d43568c607f2d87655287750
Date: Mon, 16 May 2022 06:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652683259
