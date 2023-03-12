Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448D310EB
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 08:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7CAC433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 08:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678610165;
	bh=3OIChvCYZQ6hrGJMAm//XKTPrElBQeTwChu/7EJCK3E=;
	h=To:Subject:From:Date:From;
	b=qR/WO6uqbJW3jKFTgJOaNlmU7oTlj59p0CyitRk3TAWT1xESRx/sud2Y+xdKIl6KU
	 CpYjVBoV1HJWOgyU7JsU4mR2Si6+oTFtslE575FWi1flndnty4Oq6ODd1SgHJruUdr
	 Fa+zzV5G2Uu+s9o1R2i5HHU2/L9l5zhtznsjJqZEFvXShILIILzFvK1v4v9bT2oQFz
	 VAqXDm8z8L66gG+laNhWMHHsfZIyp/pBR4/dRAJZUDlArOrPsDeQHJ9lAqHEw9qMzV
	 kwUJ2rD2gpxLdtCM0ecUUCf9RNIhUEI+4XlttBQvKlb3KCypF8a2yNFDTLvgDMI3+C
	 jMeAm6ZU8q8Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FF3C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 08:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167861016572.26145.2454010027468305099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0cbd3fa0f5948e0450b6a3d69d5e693b7817e974450947d9da6d1939a4758e
Date: Sun, 12 Mar 2023 08:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678610165
