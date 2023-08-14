Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B72A5237
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 06:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1451C433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 06:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691992988;
	bh=uEgfSduP691V6QGVVZ+AJir+mlxpv2FqBGs5Nr8ibT4=;
	h=To:Subject:From:Date:From;
	b=QAG1RiGGiKc37clz/2jGEgY1nRQBe6GIMvWDg9co1HJ3H7Z4n4qAi3me5ciWSnH1o
	 7oh8WWT5NRPQdvAnzxSmrv+dGfjkd2eaOKkkaitxnI3yu1d6hoD3fJDocJKEPizj53
	 Ltl49TDSzA5dUVKZ9BQstSM6immXiw+ZU328vNOEAteJUVdORUhWnyfxd1vNH+y+6R
	 uyObGbh3qbrUQEOGPhmqd4bbVjJV/y0I2TNK7okzwM7BiJwzPtTy0ECAiNRHRVISMf
	 mX/Zt44YvS9o3UDNjozmNYg5Y3mY/A9hrSHAVFVMm7n1LKP/LSE0lqG2fVHztNT7Wl
	 vwLn6kHuLo8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89D1C001E0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 06:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169199298868.28628.4156629606141750278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5221ddd72e00b51d14c20affbbf177c24d910131bca856bd6d1cbfaa3a2f0fd7
Date: Mon, 14 Aug 2023 06:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691992988
