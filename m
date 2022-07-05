Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7756182
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656984412;
	h=To:Subject:From:Message-Id:Date;
	bh=DC7b/nN8pgEDM4jQqL2V+TxND8lyZcnQJWfksqLFGCc=;
	b=JJWKWvLR98G9/Ao8Y0gVSMmWEUJpqNeBgC0RWSK5wfV0CFsd4/TvgdMcNZoMrfRH
	A3KosvafPgzs418q42RaA+7Adg/cRSz+kV8OX4X69gWvahs1V+X7APTome3FrzATECO
	OVYjnlVUhdqplWkjUsGJryGgYYNXPcJXjK36nfBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656984412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DC7b/nN8pgEDM4jQqL2V+TxND8lyZcnQJWfksqLFGCc=;
	b=elhqyKh1cK3XyyWiQJ7X4zgbepi6nyljiNG/icnbqWn7rxqhL9U4Mwww8GqjM2cC
	kEsJD9ysIHxzJPTnHGs1XIzoVrcAKo8q9eGuHIgXjnUi6MPqHctdYsYvqTwjBaV2o5f
	f+2x8MNs6hmIrdYKpej/dFIXvp9lnMw+U1oBTQiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cbf7a08d-8f9abf59-12b4-411e-b35a-1ee78d01b25a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00ba1b1303d7ce9d20e43f7df6800b7968855cc1f0b316a29b3a706f2b324afc
Date: Tue, 5 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656984412
