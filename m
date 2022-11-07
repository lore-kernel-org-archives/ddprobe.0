Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4D0BA55
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7085FC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667827854;
	bh=wt744J1gC+/nK9Dlarb6ojg/mnuaTU56KYcNIkTW3Z0=;
	h=To:Subject:From:Date:From;
	b=T0EbrNg4j/JJO4HSxC1c0Sq+WA+lgaRVvADeJoXKamwWawzsIATCF3KV5phE+mDMM
	 U4dHN1/x67+5staDBG4cglRjSds/Avp6qKcsDiUHreeBPOYYjHpqgql05P/IlhO0Ko
	 Fv9y9nECOqkz07VkuPNqRRmRl6fMVmojFm+l5mcdzIZ+pRHOpV47aU9AbNIpn7m9Jl
	 vS4EeAPjyKIhw3XDWXQL17/FrW//iOANUP1VaiLYQGRPIoBfUsiSMneUH0JQbHWEox
	 wrOe6LtXsC60HicZs3fo7KCugB+AxYOIaXXVyj7bE2ZiJwx2rOLimgddvhc5IrbO1R
	 oXTo9PbGR7Tqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C94C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166782785433.26334.6037934432494221564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44a76a8acfe7c0eb44b9d6a66dbbf4fadad4827ea2111d0b6f419ad0fa6cd9d
Date: Mon, 07 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667827854
