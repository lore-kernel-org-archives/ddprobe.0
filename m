Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D1263B5
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 17:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC716C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 17:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686157326;
	bh=Uo4h5i8WqUfTCFiufrpY9CxxMHqjWOUd3mfJQQsys2g=;
	h=To:Subject:From:Date:From;
	b=bmi6o45K9rLFqYqrxatFOVyPZGM1M0KwqRaeFEXR88E8Dhi+Sn3YDUV6bm7C53SsD
	 yP9Vmc+GKyf4iKK3fLAWkTGoSGGW8fAuBF02fjjBM4ESmCAnaQILe0ebCEXDB6x+Gm
	 vsYKtQfxdpPAILKSCFFlTulcmXhVTtljqRVRzI/mbnFRkEdoO9Cfrm3pH/Rj8CJKG6
	 N46LeYi5s4aZctbpg2JAYnrFDK6Gr7OJAUtgJ0i/4P25nv+6KSQ8XN9DQ5cAWvvM4S
	 E2Nj/z+qFWvRN+6HKXTUTs65+7+DD6fFUWNMaoOOJLF6hTsob5awXrszo7t0NSxNU2
	 vcmlTCYy+EDRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA55BC77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 17:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168615732580.28730.7598580208123450452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a97f584428776b6c5eded7d81acf53acb5f7bcdba47a5d66967abb5398981dc
Date: Wed, 07 Jun 2023 17:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686157325
