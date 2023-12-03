Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB8AA34
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKf2BbSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D9AC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701577696;
	bh=Uu/XN/yXN0dm7ia52WyMkl8ixGwjLax8XwLL3a4Z2RA=;
	h=To:Subject:From:Date:From;
	b=jKf2BbScPINs2sZjlyqdUKMXk0FdDtaQ1HCcdJWh/He2NJTF5gZG47w+ODwv962P4
	 BIqYtPzFTPACJAQ+sSdJyzWm6rj5eqr+REeWIx4m/quylxgkOBDAw1Yb5k6jde8JPn
	 lD3dU/HGAR0L1y8rmgSBVob73MAseRocEPDoPaYOHqcmK79DBkw7BgE+moZEICEsB5
	 J73T/CTE4scEVAx5+mUam0xMhRHQIy1UvTUpmat3Nq9jdeLkb25a8BblMJ3l0H9BAP
	 +l5JyWxz97Z004DIv2GT8g6/zz/gtAbi4ap+T2tmEulh7OGC9migD/l182QyiKo8Me
	 OC4MF5GSrJiGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6361BC4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170157769638.1055.6019178203170899366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9284d4758ced26308f2e9e8ccced8f152846bd4ab03464be7b34f59b99d45e
Date: Sun, 03 Dec 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701577696
