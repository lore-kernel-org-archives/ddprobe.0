Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EF3A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647944785;
	h=To:Subject:From:Message-Id:Date;
	bh=/hHN9sZ5UsPO9OoLVake42SWPJr6DMdM6GPR99gPIeU=;
	b=RW2yrKyKXbiTvZua8OV21KGCRx6I7TDXP7+8oaMsJpC0dg2FJCDhPrS+bPPwO4mP
	U10H12CoGuQAeNhgETZJhrTE26YYuuU/m/O6Vz2hJhUX8T5DsSbK5AdCah2kg3cYGQ6
	eN6/b/lUn8jRd/draGFOdgA4npP+yF+mAOTeoWyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647944785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/hHN9sZ5UsPO9OoLVake42SWPJr6DMdM6GPR99gPIeU=;
	b=gBWKTG5WxbRNjOJsDfJbnXn1rlP52bCcun47zTS2pA1PdjRXMXeePS0tZ4//XiiR
	oQ1jFCGVnoN3q4Wb8wpX/r0uYogt7FZx5m+NRrWNO3pPaoT9836rAy4OHNi124WM/4Q
	qEyhWoDRkjbsDPNIF4eqWT5UmsfHuKjhmGM6bcFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb129db61-c6a2a318-5898-4f16-a902-8c37ca4257b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44c12d4c4ed941f7f69e6a760861b20171f356c90549663bc4a9941ea7e02080
Date: Tue, 22 Mar 2022 10:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647944784
