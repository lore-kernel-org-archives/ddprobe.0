Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86B38474
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ABFEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669410054;
	bh=zogRjmJ0aTcclGhpIpoXI4JuJvVwFG1nNLMtDgEq7Vk=;
	h=To:Subject:From:Date:From;
	b=EYQXguPwPF4fDXwq2+Qz4pCf6obpjzACCqHvsFaAZZaWzczcHlv+g1LtcXc+TwfBj
	 0UMbf26PSag8ZacLcYLGwM5V1Js156fd0HHiAqXxB94Gm2fbvDQQEgSMs7Az5i/lXG
	 PHEBEgOelX2eAZZ//clNjglsWjJIAjRe3m+dlP/LJpWluNGgsF2jJSB+2PAf9l8npz
	 0h0gDLZvxU19RhoRwThEg4KRGHO7guC53l7r5ixKx80WWEWamB82GFZNjddDQnL4VE
	 pONRSHV0P6pLJPT7qqI7oOmrA4aOVX0IOoMaWhmQ6Ks1zZeHBWPzZK4F0yo0LqzySl
	 VopvEaqSxDi1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDE8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941005431.18579.7514989049447969304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618bf133cfbea5f3071a6665aba492beb71fa463db3e44f39d465b3c5d71da80
Date: Fri, 25 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669410054
