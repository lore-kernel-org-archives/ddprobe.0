Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43A18BE0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83880C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671225687;
	bh=lJPu1XUxElQUu3C88e9ZV3sA+u9qFQmsLcCNS+XFQEU=;
	h=To:Subject:From:Date:From;
	b=XnCvvFv0D6OWY2hOYIkUgxH+N37da7OQiETJaWSwjk+PQdgwoE4YQBCH7J5a28Oba
	 dNmUdE14nTggEHoz+WlLlow6cmrLGGDRgeRolyug/sAr0ifVs7GukYtxPFrlDcUcQ1
	 H1m2/r8phQ/BFzgQhg+e6mQ6n8sqE7/4Yg5K5r4FFUYykl1TW2mBmu/jQ/kXbf9PeN
	 59gPzSN6BxSADDf41S12Ic2o6a24ev7ImPI/87vLuq4zmzIItp8pp9oSA140aMR7fY
	 uNUgHHvcnOmZ9wMPc6B3uNGMpoK5LYj5PbKaM05WgMWe8Zf0i79FML1QNtHniwMpQT
	 TXTVV1JfTRVlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66969C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122568739.14399.9570857258140123682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6331925602b2df9c996916f838ab42d0172202a12c930c3c2544f8214d14d3c6
Date: Fri, 16 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671225687
