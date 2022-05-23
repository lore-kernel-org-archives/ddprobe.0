Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BA1258E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 14:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653317999;
	h=To:Subject:From:Message-Id:Date;
	bh=7nd9G+dmVJalzzOMYIBeuKhKOcAU+PP4gSkkMnQn2Zc=;
	b=UZ8is09h9XXJ+m+ADKyEZdiD3muSR2lrqd1CZUTWrFRiaddhFkOxGEdcyY81BL23
	sUE24g4fJp40B6u8oGbmiCCfp/fNZKfgJGVlWCDcyH8eopR0J4YJj0pYi12PdjvrZdg
	ZNAzQ7dBTtmtY3Yljb1wHaZCtz0r7DZ6rGNITxo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653317999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7nd9G+dmVJalzzOMYIBeuKhKOcAU+PP4gSkkMnQn2Zc=;
	b=QDEOz9g8J8be6GBo1O67fKp8/OkUfvYnw4JR0VF4JNQcS72jyF6Ciz9ZZx/1ZnYz
	S01g39wxiBaudQbxI5aQSaF05R2TKOm1RW2uhhQnd2/zdhuamF6NIX/zra9GtEuRaDO
	Fxj/mjKR0zCrssPj9LAcfUicJAY0HgVRMxPVPL/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f16e9a95-c917bd0a-bff7-4f80-96dd-6a9d345a4de7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47d644d6e5a751538e6a5f6772698972af40875240277f35b4e2b62c18b7d80f
Date: Mon, 23 May 2022 14:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653317999
