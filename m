Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6595517E
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661020252;
	h=To:Subject:From:Message-Id:Date;
	bh=enm0LT7FauMLdwba0rosXOkLEEvQFMrE2OLxmhAtSBQ=;
	b=JHB/V1tPn4t7PlQyFWXRVH3mljw/12d38ftFyd3thGVu5BM7l8qVgWvjC9evBk+9
	75hdE0/+AHQPuFMJCG3FGZlPHPIeRoUW2TFrWAIimbCYTm+l0CJ/UpUdlhUTAdub9Tt
	arC444DgcN8482yz9maCUyA5GWbops2nTvlZ6HYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661020252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=enm0LT7FauMLdwba0rosXOkLEEvQFMrE2OLxmhAtSBQ=;
	b=YmH44ezHMXOwZNwpcffz+/eO3P4XpT7JzByH0YFlZb3YeNr6ttJx83h2qjV1PGYt
	UXlA6Y2VNwpq2bwncJnIt1hm8/jgc+rxiQDLMBW5mmu7syEr+RS8pwWJwlGYIEh7fKR
	ehteosB9euLn0BNT3x03x6ytllkj8KPbUAbUaGBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc85a9d5-7a4b0e6d-f200-4a43-810c-90eb9e7f29f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1e18114204d3dda33d01d66e328a6adca700b3cf548f81e3100479f1066b459
Date: Sat, 20 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661020252
