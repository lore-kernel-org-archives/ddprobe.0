Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FEA23A7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7060EC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664606453;
	bh=u/S1ijPGmG3ekNqrDuVYy9UgffUCMg1ub0YI8Cd43/Y=;
	h=To:Subject:From:Date:From;
	b=EQuIin24I/gHNg9PfmvMCXYhV2JyAFUlZQIdV2MvKQvRebT01c5/69n86sNA9T9HU
	 Ra4ySdxCdp7YpJCnCwBcEwN7Aii3ZjXDKH+w7EqEM64AcZa/10i/jgGdwZr78yHTg/
	 Wo2kmVpBe4mMDVXXRSMy9gUvC67AAXV6w04Ngdj/Otw8yTpLz1mWbCW00/Oo4EArDt
	 kQcV9tdz0zgGRGyJ1vDFgNkhWGGuMAsx7HCfZNFCTA++zQRfNDWYXLOhbsNPmbi3EO
	 eMGZCTYZQJtsPcUYU9/dxoBUHm0nd5oOCxe7bmMzmbUZOdgW4n5FwlTLhu5z0skbHN
	 apE5XtpNTRLhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FE6C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460645331.16953.16526863721492858737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdcabcf9ae4528203de283dd4209ffc1da4dd558604e0abbe36af63ecce8282f
Date: Sat, 01 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664606453
