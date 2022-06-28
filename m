Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D767A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 20:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656446812;
	h=To:Subject:From:Message-Id:Date;
	bh=P/ED1S8Bm2FT5G2DIiFvinKhe7VcARiSRDSfDVKtVM4=;
	b=O74T/D6K+X9p+OzWvniukTCcpN0WnVyJCtvkYMsuQIZbMLrOc4riHKLy2iong312
	NYqeCk4UxSFYvbNm6IjeoDT4atMND/ZUjGBwvZ8TrgDyQDcFTJKly+wlOw36yoTbQmw
	K7k5ygx7Rt71OrNFkWHkig+uBbeSDp3OLOkTyZEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656446812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P/ED1S8Bm2FT5G2DIiFvinKhe7VcARiSRDSfDVKtVM4=;
	b=Gc8pAx2qgA1NCXJRgVshJAa4IZLFiiqx7bLo5yBQItzNn0yJZhF6mzcHFOABCDMH
	MCijYRCWUrlv47A3hYZduaqiUZpX6cyvFUsAU5Ev11JEJ5uDGzCyCsajjqvium62hXM
	Br3wqtcmVQ5k2i6tOLUDolRU92dHgIpQFOllfv9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181abec80c7-81b60abe-3556-4c93-bb60-b28eb4d9ad5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f6619ac59915cc56a1f3d27d1ba68f03a2188f72ddfa13ec71e0d42dad77cb9
Date: Tue, 28 Jun 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656446812
