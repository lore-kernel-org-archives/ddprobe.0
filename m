Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928DA7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658045212;
	h=To:Subject:From:Message-Id:Date;
	bh=Z37Fp9LRZjffg92nmz5eGzg00XfFhguyq7P99Aa8tSE=;
	b=GEL+cgL1vc5B3TmAvyk9TSu/RAOXVZVO6MtG/ZqDSaRI69F0OqMDeRplcHA1f8Jp
	eGgx7AkWpbeY0epxXwBsdINtcJUN8YLr3NG7hEYMK7PVEDJQk8dnb6qWrF4sBoX0/yL
	QfycZSZpOfMhr7BjdKS2XuS6x2rDjJDb5EWXFNT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658045212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z37Fp9LRZjffg92nmz5eGzg00XfFhguyq7P99Aa8tSE=;
	b=RxHT6BtG2M4/nj4cHZkuO1nlhFQBKRQmvOtpFeihCAdsBEKvY0DHxjO40bR8ZEmn
	NMpuhvvyfujeaYbhzffEierC03cDmLf32dXdPsihg+Mrqnm0l0KerXuNRG52JKDCetE
	5AsyoAMhk3n9vGvCTvDwrVqSYlexnl58q2FFltxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820b322696-764c46e4-c935-4041-beaf-9880a7e7d5e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab27a8dc5686fc3cf5ec45586051c25e613d890904f197deeaba9853b730c673
Date: Sun, 17 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658045212
