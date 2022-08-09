Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FF015A6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660008053;
	h=To:Subject:From:Message-Id:Date;
	bh=oB9BYTPQ5p+FTXWkfDOpyQywwLZg2860aUpMAX1GFlw=;
	b=ADD5SWIaFFpC6tyBsWeu8pL0YfrfxJx1IHjL3DT297+Flbq0Yxo08F2iAV1ZytN2
	L9W2DuxQMnTqit2v6wPbL21qYwSN7H68+IeWWydwCErybvWMLRvFmX01UGfZ50vxiHT
	/Bzxh57lZnMjFPbpxJ7vbgSUyfbi622V7ZoIV45o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660008053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oB9BYTPQ5p+FTXWkfDOpyQywwLZg2860aUpMAX1GFlw=;
	b=QOX43SioKRQz2wBMnyqYYrxm9wuTTQOurfsJg3Y47duBEjdnqtrTHX+HtBbcP3oC
	oIVlOmXDBW4edPY/R/No8xe4mmgh4nkudlobJ4CMnXejp/7FkGzcqvlLCUcMR8xYaJM
	ioThofdajOZMNx66coI84pP0/2OI73xy1JKqg2kc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828030b75a-fd8cc17c-2512-4bb0-a271-1dbd69db28c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8253de485fcca61ccbd844a0237f8c572327cbaa1f3d24ec56f42dfa4b5918b8
Date: Tue, 9 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660008052
