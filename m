Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219D64C9A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 21:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657922212;
	h=To:Subject:From:Message-Id:Date;
	bh=HPtv2fF2Cv59bMvPT4jeNELZdvM6+P97tkWFPGF3G90=;
	b=A2fgwFMhqH3GGLL1rkCWrdFtzcgOJ5Kw+wYJaWosk24GASt/78Oev46oAA8X8LvM
	aXhAdht1yS0rwwzUvxKAy5Xc1UbWTsJ7Wmq+JwGaHF5aHYX0UjUZiEopedMT+jed3B0
	segQNYYMcZ9oABRptSD+Gg3Hax8g+gV5OE2lANjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657922212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HPtv2fF2Cv59bMvPT4jeNELZdvM6+P97tkWFPGF3G90=;
	b=g2/DkhF2GiEqWH3wqrt+QI31/w4ZqjrRJRPHVN63zYrvBSgaelRopQ6AQVqZf62H
	Maoc5bn702MJeNYLcKe9kZn7vi9E2xYrcWEd4hrg9eTaonwVTGrbSuMtymcRJ2ShZDF
	+EOF/FwypPJSSQwlxgzUtcu3IlA44pOwZ8SGQc8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203dd51df-c2861842-2543-4517-bedd-e526fa1547df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a86442466283f05aefde54a6c899f66625d5568621c761a367e6554fdea7cff
Date: Fri, 15 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657922212
