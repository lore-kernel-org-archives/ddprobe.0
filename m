Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F59FEA8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 02:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654310219;
	h=To:Subject:From:Message-Id:Date;
	bh=Y6iHvNFRF8cXWzIYNdLmurLdpysP7RL7Qzi1WNcs5c0=;
	b=Ftu5ADUGYF1az07mPGRumEeosEXh6SQJPK+MynBeVlhyMZTYnTWbi8t42qsqOwMK
	Wd12/pBQQP3Ugay8LHtV1Gr3nOGFSQ94DapWBKZC2DLbY0LS46pKXViLAy1P5Q/uFve
	9zzNN8/0EGrndI1k8HwQso4taMFyWxrcYpvp9A1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654310219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y6iHvNFRF8cXWzIYNdLmurLdpysP7RL7Qzi1WNcs5c0=;
	b=a1j2m5AbS5IYQf6U9i1CbvccnXgKjAXGivCpTrN4BfEF30N2wplYwYCM4aTsZACi
	M9vdbvLH2cjLuUiY/ZCV4sQU00BvNs2yAL303nMQLhtwzudSHYurixY2+NZh99CZDyh
	4vwyFrmPLaDbciXJHL7iGXx9GULMfkVv4yq87dc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812c92ae41-a2e8d8fd-a421-4c5b-b135-a9c972a94d55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85b408917891adb0860dcbb820d1bce81545862a12571430dfc20ea358bf93f4
Date: Sat, 4 Jun 2022 02:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654310219
