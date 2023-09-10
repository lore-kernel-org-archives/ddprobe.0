Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5656F63C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 14:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61DFC433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694355248;
	bh=Wvyp3qkWrtpYJglk/ON4Z4dvDS8Gtn0nxWVXUYMjHls=;
	h=To:Subject:From:Date:From;
	b=t4pGi4vmBs3nWNs/q+n54XSvzSMY/es/7EU6IlSzreO8j0ptEuMN7ZT4FHpA+7has
	 hSQqZluU8tof0xoDRfJCBG9wFns302Dzh+BsMVSwh790cK98Ids2HYU3pDkN2ykFM2
	 9zSLjozi9NQsG+cuAWrr7Aa0798sckNPepLoNwI1lw+WuwscuZvX9svlT4zthnqZ4q
	 uGVje1khZtkSuN2r7r6m7ga4Q8d3iUMb+ijR+kYJQ6BXszv3/S7x1UXi4znJ/4UU+i
	 hKuRp5vTkxlFc9XSnV24nCGTAU2CKy+IMvx/kabO+ycYHj04Tw+W6TIBFbQWqdhx5Z
	 Z1S6+w8p4s0jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA6FEE14D8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169435524867.22074.15517802217545091251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf53e631ed250c88aeb4bebc17696e26a60b94c803797fbe20379652cd873a3c
Date: Sun, 10 Sep 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694355248
