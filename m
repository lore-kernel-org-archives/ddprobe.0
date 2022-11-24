Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AF179EE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8171BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669326654;
	bh=xWwbfjjmh5hkNeYe/h+3G4KQnctSywV/yYZ1Noy3qwM=;
	h=To:Subject:From:Date:From;
	b=pWTdTrp/tA3tMOEv5xRV78ijnZSxxaAnlwBlslpk5XuNf0/1F0hxrmshcTsMSScbX
	 507g8jE1avuSqgQooTyBWLCsql24JE7s8dBcf4aglNpaQQcJ9TKILcQE3VRQxbefi5
	 1W13D3C8Sn9AdPdcL823ZQGWhOVHShSUWKo8Nh3WHgIJWgEx4Glq534d6jjOv5pZqZ
	 0Pm8ZvaFb7W3AxGlYxt+S65P25IDRg7J9BtAx8eaORJkkqV1jOaSOgluiulHIG4FUV
	 h1KRMrkZNOeGXU0NCTf+rwTOAX1bpSCXeo9n3q6/2nmOPQzIHAmXauk52VpwAQzivm
	 lhV9Ms2vgYeeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6FBC43219
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166932665442.14882.12428916402279840638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52add38a6f88d622806ebbcda8a5398ba6ea740703b7f5342bf2ef0f0b156e4
Date: Thu, 24 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669326654
