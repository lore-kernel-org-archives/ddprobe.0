Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD14D8BE0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78025C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668706854;
	bh=l3r3QiN+qIe49lMfFjtQmreEzz8sfKazMmZe4IlnBGg=;
	h=To:Subject:From:Date:From;
	b=CA2geIb1BWadffE8D6nerMWE+gPKB2XarvOPBzd8NznvZaUezrOs9kLDqz27a0g3c
	 DaXdXVJqsfDil6ZX/SJ2ir5aWKqNpiiQdsABmScAGMySBx94eZDnhw2/dKEMmJJ81g
	 pRqQAWmEfH5xzIVfuT+2VS+B+/9G1aqA4p9YpVak2hVHXPbaLaQCx7yhnO4Aae92Rc
	 GUttUrlR2Cl06+KjgXZnyba1BzoYNogMUAcWYRV2Q+nyZWRLqUjd2MygsjDroeB3o8
	 Cxa9JTVPbn2E4gjqPpv5o+63ilqXVlnhFh9Wf8Yr9uP+i7vN2LLGHK/hFY9rOsSjFq
	 y3QTWe2bYxZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5500CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870685434.5152.520046118303716092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aaa9d5c5857c50798ff5a85f7b2f95742ed9861d5cb2b786340a753fbbc2b91
Date: Thu, 17 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668706854
