Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD7249FA
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbuuCQH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1ECC433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699919296;
	bh=nhAdCeahXZvJPJcwyDe9SsSyw2aTrXkHZBvlxFQNi0k=;
	h=To:Subject:From:Date:From;
	b=VbuuCQH5/elJbvrE9AUI9ep402LgSiu6DbR4I8g4Bk9Nn6hkyI+yQCmlCEZtHSGjV
	 jVVKEHyGVIlsBBaY+nnny1K5SsT8OUT2LhsPVnl1iqDTCdMq6liFmmooKbzzO3jsTf
	 pCnGBaiY6bz8BIvyAewzPrvUEvEumWT2bhSiVNg2HyCh4QoPnPRMucvNVc681fM5SG
	 5zVgSRhiSDoc6lr2hQuDSYf3yL2Whi4kuXHELiUDGidzBAIdOeRzdUt68dUwjNG2ia
	 xeFT2gotK7ZRPsBaCp2l0pC60/Lq/pvczPC2HXnkL2GITdlf8DzLZsYcweuYAFy31G
	 zLFyGC3vmBy/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B72C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169991929639.13149.14519603672562493081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39ee62ee23ba84eeab6dc5aef770c2182ce7b8d2f79988d55a7d7a9f2a6889e
Date: Mon, 13 Nov 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699919296
