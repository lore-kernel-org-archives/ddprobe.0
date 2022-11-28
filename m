Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC6C8F42
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C49CC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669647654;
	bh=1A87/HjQs8AuqkMX/OcGpStgufKBlrihPBWsCZQnFDc=;
	h=To:Subject:From:Date:From;
	b=Hs1I6hIKJscBpYxb04RB4d1ulusB3YT8KJO9toqSkDQwWkoY+bLC6FDUBAmXKP/WV
	 YatbkCiCVRRjEBTZjx6HCq0CE2lfDekXafan337KcF8OLMnRp2jcBmO+ksQbayDq7J
	 D0ddzJkioiefj+sa6+mPZztiKaNvIWmsMt11UVxf136MVXuWJF2p/WG6FozdtJMnGH
	 PYgqOqL06GyEm1LLqW/JWToKRbvl/Kn+oxcRHbKJkjHGsHU6g403vdGwMK9uwDcGy5
	 ejvSDZGTrrMFHehC5LS9Y4ddLFUbEqlY8OWAyTPf0myic2u4kSLSeXT9WIh6u00llc
	 Qh/Jy4CdnCbiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FADC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964765434.9510.16277517134732920289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c6674e399e6f0d4614ef896395c941cff9e1980c22161713ce380feecece57
Date: Mon, 28 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669647654
