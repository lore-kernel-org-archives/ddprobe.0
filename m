Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97D7EBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71857C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666697453;
	bh=LfBQ2NgI3LU92sGlKAMfCCpe9ud2f7vorssU8u8lWuI=;
	h=To:Subject:From:Date:From;
	b=H5YMPFULx89pTICMdRBTCby+l0IS2EvJyckGjOBWMSGcEMCBdKOShYHRnUXoKM2jm
	 9owUQRVYPS57f8LPjfZL8//ngZkITUgwdJdhvkKC8xk6M+qv20AFz1iQpRHMK4WCtC
	 zH6ZqNZ0vG27lAssLIug4yInWvg1CMeGpdkDKu9eaFEBDF3NKsw1HR5dPLBrN2xR3l
	 oQZOXBw9faHzjibyAf8udGcTjhjZOm2vZrS8KLZF8WU0Cav5fPAZoMZhi5XpdTEm2L
	 Oa0IQcD+Yq7leU18XSgPY6CNOMsLAKg/TtGddaQYGDng1aQ281EDOlryjFn0F8Q8ia
	 NMELZ6rPAvPnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571D3C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166669745333.21064.6541458867785297423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6080b7a6db10b816ce363981e9b141a621ab44ac23220dfc7f5bafe43eee9079
Date: Tue, 25 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666697453
