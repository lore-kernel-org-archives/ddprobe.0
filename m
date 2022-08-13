Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B61A7E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660372852;
	h=To:Subject:From:Message-Id:Date;
	bh=c4W/0HQOG26wJkbO8NzI20OdIMxlVNNBWJyQWssNroc=;
	b=Kt8fS+Mcgn9kjXQeWHJ9lUxoLKRvSD27hh9uAFtwF2czO6N2V6NN5NzsB3wbs1t4
	ElA/xT7XxlGkk6XaoBzcWjpuda1KoWijbgbI0iUWbzLNtVQ4RPXMICwGmVsfESH2cwa
	6z+gHnizu57h9ayNDc82gsjLguywFBuze865P1M8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660372852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c4W/0HQOG26wJkbO8NzI20OdIMxlVNNBWJyQWssNroc=;
	b=UrIFPGEruh4ZHWe9DyIuXrp60GCDe3MijNdUtOBoxp4QlddUYxKDf2zvn8MPMH4w
	7DVqoo/pVmDUvOO4W3LF/v05kFNhFEDVqOqOLBFlfQJfBP20tEon2uYGZV1L2ZEktPR
	ft/zXAjt6nO0/2k2QEN7t67PqUS4yuXs5S6CTr7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295ef1f95-90c3a0d6-b347-4d5c-b533-3c998fa2a853-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7109646eaee8490502bc8d7a847e0f9ef06b96db2c3e639308cfb29855cbc408
Date: Sat, 13 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660372852
