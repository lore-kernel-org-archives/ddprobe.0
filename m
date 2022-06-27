Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2646D20E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656302212;
	h=To:Subject:From:Message-Id:Date;
	bh=VQytD9nZvUHgyQaEoGYhSYRwS0Lv+JFGu9rDM0xtHoY=;
	b=EQVIUaz+olnwPFjXNG90sOgWToPervSBKDFCAF7QDEnxBBoUX23EQOcuRrP8007K
	AkUKu9XFcR2PB2bRN3lhGvtt0CqIj5pmcpkTBfLTkI8biZPZ7/wJQ0E7ha7q3E988M8
	EXeotla0W+VENb/CNUaQjCULpH6mEHLJ73zX70yE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656302212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VQytD9nZvUHgyQaEoGYhSYRwS0Lv+JFGu9rDM0xtHoY=;
	b=LyLKDx1Gftn35HUefb8IKgsIYTiklt8wGlXLjg+ZyF8s5+WDCUN4n3pUdwaaQM4x
	ZZ+Dvff+lgvJSeaDih5eyV1FjCFibiPQXTVxmmHxhV3iVrTg48un3M5eQzgKRXeHaoA
	sC5IC4Uik8KIELtvrSQcBgI5U8t4BWWLVYIPxwWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a34e14aa-5fba6e4d-6c8e-4f91-81b4-a500f7644c93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbe67df5fd8e6d03dcac2083f69d5c2372962e73cc17aadeb0f656d8840d52dc
Date: Mon, 27 Jun 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656302212
