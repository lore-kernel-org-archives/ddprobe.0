Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE43D2F36
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1C6C433F2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670542287;
	bh=Opq7d7Vp4EQyBjZ6/329zFr/s8ws6f9OgkMErS1ypxM=;
	h=To:Subject:From:Date:From;
	b=FsmzoKRME2uDcGpv8Av3GKr+U7qdn7whNZGiSRTaKVBt2WH3YnO6k3VRHGDsWRDGT
	 mJhVMJbXgKSE6V0MooJG+2wr5poN/i5a7cecrM0pVe5jq4uUEk+lcA4yL1kZw8FUGd
	 MlgDsPCTVsVhoyO2dv5AP7yJnaN/IKIXLwQWHjFmUJhQ3ftyyzpj4Kkst+QEZLB3cL
	 LINrLQwoVfvVQLG7fsLKH25G2ahxBHwNTYYNLQvNt1kdXAH4BKpnD1OD1bT35TYQCB
	 YQj9+rnYKcRLPF6FR98VjsJVJBfJynCKzX1CX2641cgZKDmtClgwIV1nKqqRRjxNOS
	 QDRkne/DOIQDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618E9C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054228739.8558.3269149909315785785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a783937de2815714f759ad3b1af840411e8fb43c975f8610f675dd106f91c72
Date: Thu, 08 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670542287
