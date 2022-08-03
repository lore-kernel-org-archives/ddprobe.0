Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEA4368
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659510652;
	h=To:Subject:From:Message-Id:Date;
	bh=jNvllF8qO6xpcr/ltrtvxdTWWnD5o51QnDtRSYBtN+k=;
	b=avnTACfXzfo8gr2jandWZiPBVSSm/OEy3LSQ/0D9HO3fyDQBZSIfvKKcSr8zRTYL
	zNKdUCdQfcxvLOQ2APGr0ReXyzaI5nPfCnAt6YDlNEAjQJmAmSL0mP/jxknpoNr0iXs
	FDz7z5qmubTwsobUckySpV61Dpws4kWesLu4n4fs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659510652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jNvllF8qO6xpcr/ltrtvxdTWWnD5o51QnDtRSYBtN+k=;
	b=LZWv30whPBKLYSfAxw6v38b+MXkO7F/sZ8eUJo5cmOkjH6PSZhA+Cbxy/aiQf012
	Qjkv0SCxLdvLli4I1WA1KYaTcXzZCfGDyBZ8FrksX+tw95Fcjfi7C7YWU1eH4gdmywW
	YOWUooC7omaq0WWAfRagyAwqLmj92mbsUIy6W5m4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182628afeb1-ddc19b0e-6e39-409e-bca2-5a5e2fd63ffe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 017a75e1387c3a8865d08a41f45108fc84d122988f64bfdf0912b4365764e840
Date: Wed, 3 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659510652
