Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA803D8E
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 21:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653429359;
	h=To:Subject:From:Message-Id:Date;
	bh=+PkwdSkrZuBs2CgtnTTGqlPByJunWzrluVjQaLUV9EM=;
	b=SeyFCTe3lgwi9eRUOgrNQxHykgDBYJTAwns/U0eUYKLPjBCHvWlgjpVNOejnMfHc
	obLXyuTkd96wc4eiWPjJG+dvIZFLWS3hlqWJDtP7YJeVCRXDn2OrEB1uaJtcTEauXrW
	wsP2OgyWUTYLBqnwuFPT46LRvCJ09LmscR+BAyu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653429359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+PkwdSkrZuBs2CgtnTTGqlPByJunWzrluVjQaLUV9EM=;
	b=E1u5EOvMLN6WdYVXJyQ2IzapSgVYXKJ5O/ooOI15M97NPXwZkr4vC/sF6MKQ6O8h
	5HH2nkhcNBtcXkpxK44ughvPL4x8PVoFl4vvymTP3ZZwkowl2MYzgmXLgCdFKz2H6J6
	tEmwz+58KG+oHsY9vGztcktI3hfiIZAn/N+zxZkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f811d29d-584b1105-ec38-4f12-b3ee-12719e78d146-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c44cd806fb3ce9f7d1627fe23921405dc9afd7247aec03491262830f91dce81e
Date: Tue, 24 May 2022 21:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653429359
