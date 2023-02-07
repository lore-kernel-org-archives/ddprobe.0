Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2C67F
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 00:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3865C4339B
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 00:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675730765;
	bh=uKSY5Lyg3FqQLrwKMDDxkR6NzQ3mrgaNF8IMLp2KilE=;
	h=To:Subject:From:Date:From;
	b=AqEVPgYUgJ9twdCshvsoNYqfrhCBXPrUSqva/1Mc/Sf6d3Y0HpIEcyD0AW9OUZC8v
	 I1DjJP8rCchmT6bqbM6wgZdcEpbrKaeVetXmSd+QTBv3dPJ2OkQQkJi3FSuvxf/QCr
	 OzFLaZdLCMpcbQDLpsAQNSQLQRuT8nStxuSuV1gOeFWeZd0GeMeGys4HRg67ql4X24
	 KRkA8nNHHSY9Dii+SiQCCDwfZEpubJkN/7mBUV2cKo0FdwebSvwUoR1hNXNsqumgxX
	 JsVgpni+CQQnp1p/wztKxtyY5gTGC9kU3El0QOsnu1DQ0ekVy0xNFDU8yc7f3BU0Fr
	 CTpW8nkvt46hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F7BC61DA4
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 00:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167573076574.22349.1516171060409482545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92623ef4497407cdbf8192ca06cc17e70ab4ca2744e64113e91383d40e0ca0e4
Date: Tue, 07 Feb 2023 00:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675730765
