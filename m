Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528675685
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 17:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6615C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 17:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675791485;
	bh=/c8g5veOg2jDWzvzAJJNXStqUA5g9FQQ2DxzUuhT50Y=;
	h=To:Subject:From:Date:From;
	b=coL9JI2kAHsB/KWRhjSCRT8dt7tqo1vpLZ5lKFiwPqVCUcgCY1ylO2RkNydP7Fu8x
	 x5a8J8Hfkxg5jFmhUI2S18SV2HEI9GrFyLxUJNatippN1+uP4Ex8Ul+ZpRPOtMwD7a
	 yyqhH7f5dIfPz2mCRcpKt+pUC5r5OFVUU/O6HyXRgTXbJbWtVjREJN0I/5aCuyS1AH
	 6EGue5lBCzlI84zrL0RgLt7pDRN7WewCinlUFyur9Rnr1l5hZfMy1A6iZAJyOYS9Fc
	 rkEuYBIAT5vVbLtK25kgvGzCTgzA38PQwUbzvwk/FwuWQCZ2xXjGXQaSa8HR85w92Q
	 mtaMFlYb7E6jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A8DC636D3
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 17:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167579148579.11414.1159274638780885012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30427b30379822822d194b3ef4a0ed996054c03b1aa44ba4a4c23d606b0fc060
Date: Tue, 07 Feb 2023 17:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675791485
