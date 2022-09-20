Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B891F7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEA8C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663663253;
	bh=oDEF9FRPZmCGgNBiOdi1d9T0+UXIxCBKjEkx1G+5iS8=;
	h=To:Subject:From:Date:From;
	b=bWt+D2yKS2Rp1pk8ZCnfwdUS0h/XLvospLmL/B1CMKOu0eRkYV3cq6ZyKkaMflY3O
	 91arS8sAFruj5uC4fYcKXmd/R2HYWzxy6E/PnbQ7Vpgsq6h4Bs3OZ+I+No9B0TDZ+6
	 6jNN0u9/sBuQWQZG8IFzwWuYCG5TD2G6qX2GpG8T2cb+DT6APBXw/rJEhyqH8Kl8SD
	 7AEfyShF7nzsGiyaTNF4MeMF3zw0sDlUTxVyPUWG5Rqc5CKUbdfDh4Ndn49UC9M5Nc
	 e0UGVSuJ07D12new9WSSAD1+VnbygSArgaby0kxZZuOJfzRZuR0Ky8tZviDobEsVJZ
	 cDhljvzmoUv5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B76CC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366325336.29279.17794295712563014482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe936e49347da6ee0646a1e7200096126c5713d410a4cd53893576b5402bec3
Date: Tue, 20 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663663253
